.class public Lcom/sec/ims/settings/ImsProfile;
.super Ljava/lang/Object;
.source "ImsProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;,
        Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;,
        Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;
    }
.end annotation


# static fields
.field public static final AUDIO_CAPABILITIES_NB_ONLY:I = 0x3

.field public static final AUDIO_CAPABILITIES_NB_PREF:I = 0x1

.field public static final AUDIO_CAPABILITIES_WB_ONLY:I = 0x2

.field public static final AUDIO_CAPABILITIES_WB_PREF:I = 0x0

.field public static final AUDIO_CODEC_BANDWIDTH_EFFICIENT:I = 0x0

.field public static final AUDIO_CODEC_BANDWIDTH_PREF:I = 0x2

.field public static final AUDIO_CODEC_MANUAL:I = 0x4

.field public static final AUDIO_CODEC_OCTET_ALIGNED:I = 0x1

.field public static final AUDIO_CODEC_OCTET_ALIGNED_PREF:I = 0x3

.field public static final AUTOCONFIG_NEEDED:I = 0x1

.field public static final AUTOCONFIG_NEEDED_PARTIALLY:I = 0x2

.field public static final AUTOCONFIG_NOT_NEEDED:I = 0x0

.field public static final CMC_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_PD"

.field public static final CMC_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_SD"

.field public static final CMC_TYPE_NONE:I = 0x0

.field public static final CMC_TYPE_PRIMARY:I = 0x1

.field public static final CMC_TYPE_SECONDARY:I = 0x2

.field public static final CMC_WIFI_HS_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_HS_PD"

.field public static final CMC_WIFI_HS_TYPE_PRIMARY:I = 0x5

.field public static final CMC_WIFI_HS_TYPE_SECONDARY:I = 0x6

.field public static final CMC_WIFI_P2P_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_PD"

.field public static final CMC_WIFI_P2P_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_P2P_SD"

.field public static final CMC_WIFI_P2P_TYPE_PRIMARY:I = 0x7

.field public static final CMC_WIFI_P2P_TYPE_SECONDARY:I = 0x8

.field public static final CMC_WIFI_PD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_PD"

.field public static final CMC_WIFI_SD_PROFILE:Ljava/lang/String; = "SamsungCMC_WIFI_SD"

.field public static final CMC_WIFI_TYPE_PRIMARY:I = 0x3

.field public static final CMC_WIFI_TYPE_SECONDARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_DEREG_TIMEOUT:I = 0xfa0

.field public static final DTMF_CODEC_ENABLED:I = 0x0

.field public static final DTMF_IN_BAND:I = 0x1

.field public static final ENABLE_STATUS_MANUAL:I = 0x1

.field public static final ENABLE_STATUS_OFF:I = 0x0

.field public static final ENABLE_STATUS_ON:I = 0x2

.field public static final GEOLOCATION_IN_PANI:I = 0x1

.field public static final GEOLOCATION_IN_PIDF:I = 0x2

.field public static final GEOLOCATION_IN_PIDF_WITH_CD:I = 0x3

.field public static final IP_TYPE_IPV4:I = 0x1

.field public static final IP_TYPE_IPV4V6:I = 0x3

.field public static final IP_TYPE_IPV6:I = 0x2

.field public static final LOCATION_REQ_EMERGENCY_CALL:I = 0x1

.field public static final LOCATION_REQ_EPDG_AVAILABLE_USER_AGREEMENT:I = 0x2

.field public static final LOCATION_REQ_PERIODIC:I = 0x4

.field public static final LOG_TAG:Ljava/lang/String; = "ImsProfile"

.field public static final NOTIFY_ALWAYS:I = 0x1

.field public static final NOTIFY_NONE:I = 0x0

.field public static final NOTIFY_REMOTE_NOT_AVAILABLE:I = 0x2

.field public static final PCSCF_PREF_AUTOCONF:I = 0x3

.field public static final PCSCF_PREF_AUTOCONF_IF_RCSONLY:I = 0x4

.field public static final PCSCF_PREF_ISIM:I = 0x1

.field public static final PCSCF_PREF_MANUAL:I = 0x2

.field public static final PCSCF_PREF_OMADM:I = 0x5

.field public static final PCSCF_PREF_PCO:I = 0x0

.field public static final PDN_DEFAULT:Ljava/lang/String; = "default"

.field public static final PDN_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final PDN_IMS:Ljava/lang/String; = "ims"

.field public static final PDN_INTERNET:Ljava/lang/String; = "internet"

.field public static final PDN_WIFI:Ljava/lang/String; = "wifi"

.field public static final PDN_WIFI_DIRECT:Ljava/lang/String; = "p2p-wlan"

.field public static final PDN_WIFI_HS:Ljava/lang/String; = "swlan"

.field public static final PDN_XCAP:Ljava/lang/String; = "xcap"

.field public static final PIDF_INVITE:I = 0x4

.field public static final PIDF_INVITE_RESPONSE:I = 0x10

.field public static final PIDF_LTE:I = 0x2

.field public static final PIDF_REGISTER:I = 0x1

.field public static final PIDF_REINVITE:I = 0x8

.field public static final PIDF_REREGISTER:I = 0x2

.field public static final PIDF_WIFI:I = 0x1

.field public static final RCS_CHAT_SERVICE:Ljava/lang/String; = "chat"

.field public static final RCS_PROFILE_BB:Ljava/lang/String; = "joyn_blackbird"

.field public static final RCS_PROFILE_CPR:Ljava/lang/String; = "joyn_cpr"

.field public static final RCS_PROFILE_NAGUIDELINES:Ljava/lang/String; = "NAGuidelines"

.field public static final RCS_PROFILE_UP:Ljava/lang/String; = "UP"

.field public static final RCS_PROFILE_UP10:Ljava/lang/String; = "UP_1.0"

.field public static final RCS_PROFILE_UP20:Ljava/lang/String; = "UP_2.0"

.field public static final RCS_PROFILE_UP2_2:Ljava/lang/String; = "UP_2.2"

.field public static final RCS_PROFILE_UP2_3:Ljava/lang/String; = "UP_2.3"

.field public static final RCS_PROFILE_UP2_4:Ljava/lang/String; = "UP_2.4"

.field public static final RCS_PROFILE_UP2_5:Ljava/lang/String; = "UP_2.5"

.field public static final RCS_PROFILE_UP2_PREFIX:Ljava/lang/String; = "UP_2"

.field public static final RCS_PROFILE_UP_T:Ljava/lang/String; = "UP_T"

.field public static final RCS_SERVICE:Ljava/lang/String; = "rcs"

.field public static final REREGI_FORCE_ON_NR:I = 0x2

.field public static final REREGI_OFF:I = 0x0

.field public static final REREGI_OFF_ON_RAT_CHANGE:I = 0x1

.field public static final REREGI_ON:I = 0x3

.field public static final SERVICE_ACCOUNT_AUTH:Ljava/lang/String; = "scab_account_authenticator"

.field public static final SERVICE_CAB:Ljava/lang/String; = "cab"

.field public static final SERVICE_CAPABILITY:Ljava/lang/String; = "capability_tapi"

.field public static final SERVICE_CDPN:Ljava/lang/String; = "cdpn"

.field public static final SERVICE_CHAT:Ljava/lang/String; = "chat_tapi"

.field public static final SERVICE_CHATBOT_COMMUNICATION:Ljava/lang/String; = "chatbot-communication"

.field public static final SERVICE_CMS:Ljava/lang/String; = "cms"

.field public static final SERVICE_CONTACT:Ljava/lang/String; = "contact_tapi"

.field public static final SERVICE_EC:Ljava/lang/String; = "ec"

.field public static final SERVICE_EUC:Ljava/lang/String; = "euc"

.field public static final SERVICE_FILEUPLOAD:Ljava/lang/String; = "fileupload_tapi"

.field public static final SERVICE_FT:Ljava/lang/String; = "ft"

.field public static final SERVICE_FT_HTTP:Ljava/lang/String; = "ft_http"

.field public static final SERVICE_FT_TAPI:Ljava/lang/String; = "ft_tapi"

.field public static final SERVICE_GLS:Ljava/lang/String; = "gls"

.field public static final SERVICE_GLS_TAPI:Ljava/lang/String; = "gls_tapi"

.field public static final SERVICE_GROUP_NONE:I = 0x0

.field public static final SERVICE_GROUP_RCS:I = 0x2

.field public static final SERVICE_GROUP_VOLTE:I = 0x1

.field public static final SERVICE_GROUP_VOLTE_RCS:I = 0x3

.field public static final SERVICE_HISTORYLOG:Ljava/lang/String; = "historylog_tapi"

.field public static final SERVICE_IM:Ljava/lang/String; = "im"

.field public static final SERVICE_IS:Ljava/lang/String; = "is"

.field public static final SERVICE_ISH:Ljava/lang/String; = "ish_tapi"

.field public static final SERVICE_LASTSEEN:Ljava/lang/String; = "lastseen"

.field public static final SERVICE_MMTEL_CALL_COMPOSER:Ljava/lang/String; = "mmtel-call-composer"

.field public static final SERVICE_MMTEL_VOICE:Ljava/lang/String; = "mmtel"

.field public static final SERVICE_MMTEL_VOICE_VIDEO:Ljava/lang/String; = "mmtel-video"

.field public static final SERVICE_MULTIMEDIASESSION:Ljava/lang/String; = "multimediasession_tapi"

.field public static final SERVICE_OPTIONS:Ljava/lang/String; = "options"

.field public static final SERVICE_PLUG_IN:Ljava/lang/String; = "plug-in"

.field public static final SERVICE_PRESENCE:Ljava/lang/String; = "presence"

.field public static final SERVICE_PROFILE:Ljava/lang/String; = "profile"

.field public static final SERVICE_SLM:Ljava/lang/String; = "slm"

.field public static final SERVICE_SMSIP:Ljava/lang/String; = "smsip"

.field public static final SERVICE_SS:Ljava/lang/String; = "ss"

.field public static final SERVICE_VS:Ljava/lang/String; = "vs"

.field public static final SERVICE_VSH:Ljava/lang/String; = "vsh_tapi"

.field public static final SERVICE_XDM:Ljava/lang/String; = "xdm"

.field public static final TIMER_NAME_1:Ljava/lang/String; = "1"

.field public static final TIMER_NAME_2:Ljava/lang/String; = "2"

.field public static final TIMER_NAME_4:Ljava/lang/String; = "4"

.field public static final TIMER_NAME_A:Ljava/lang/String; = "A"

.field public static final TIMER_NAME_B:Ljava/lang/String; = "B"

.field public static final TIMER_NAME_C:Ljava/lang/String; = "C"

.field public static final TIMER_NAME_D:Ljava/lang/String; = "D"

.field public static final TIMER_NAME_E:Ljava/lang/String; = "E"

.field public static final TIMER_NAME_F:Ljava/lang/String; = "F"

.field public static final TIMER_NAME_G:Ljava/lang/String; = "G"

.field public static final TIMER_NAME_H:Ljava/lang/String; = "H"

.field public static final TIMER_NAME_I:Ljava/lang/String; = "I"

.field public static final TIMER_NAME_J:Ljava/lang/String; = "J"

.field public static final TIMER_NAME_K:Ljava/lang/String; = "K"

.field public static final TRANSPORT_TCP:I = 0x3

.field public static final TRANSPORT_TLS:I = 0x4

.field public static final TRANSPORT_UDP:I = 0x2

.field public static final TRANSPORT_UDP_PREFERRED:I = 0x1

.field public static final TTY_TYPE_CS:I = 0x1

.field public static final TTY_TYPE_CS_RTT:I = 0x3

.field public static final TTY_TYPE_NONE:I = 0x0

.field public static final TTY_TYPE_PS:I = 0x2

.field public static final TTY_TYPE_PS_RTT:I = 0x4

.field public static final VCRBT_MO:I = 0x1

.field public static final VCRBT_MT:I = 0x2

.field public static final VCRBT_NONE:I = 0x0

.field public static final VOLTE_SERVICE:Ljava/lang/String; = "volte"

.field protected static final chatServices:[Ljava/lang/String;

.field protected static final rcsServices:[Ljava/lang/String;

.field protected static final tapiServices:[Ljava/lang/String;

.field protected static final volteServices:[Ljava/lang/String;


# instance fields
.field private mBody:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 778
    const-string v0, "mmtel"

    const-string v1, "mmtel-video"

    const-string v2, "mmtel-call-composer"

    const-string v3, "smsip"

    const-string v4, "ss"

    const-string v5, "cdpn"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    .line 783
    const-string v1, "options"

    const-string v2, "presence"

    const-string v3, "im"

    const-string v4, "ft"

    const-string v5, "ft_http"

    const-string v6, "slm"

    const-string v7, "is"

    const-string v8, "vs"

    const-string v9, "euc"

    const-string v10, "gls"

    const-string v11, "profile"

    const-string v12, "ec"

    const-string v13, "chatbot-communication"

    const-string v14, "plug-in"

    const-string v15, "lastseen"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    .line 791
    const-string v1, "ft_tapi"

    const-string v2, "ish_tapi"

    const-string v3, "vsh_tapi"

    const-string v4, "capability_tapi"

    const-string v5, "chat_tapi"

    const-string v6, "fileupload_tapi"

    const-string v7, "gls_tapi"

    const-string v8, "multimediasession_tapi"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    .line 799
    const-string v1, "im"

    const-string v2, "ft"

    const-string v3, "slm"

    const-string v4, "ft_http"

    const-string v5, "chatbot-communication"

    const-string v6, "plug-in"

    const-string v7, "gls"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    .line 850
    new-instance v0, Lcom/sec/ims/settings/ImsProfile$1;

    invoke-direct {v0}, Lcom/sec/ims/settings/ImsProfile$1;-><init>()V

    sput-object v0, Lcom/sec/ims/settings/ImsProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .registers 3
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 879
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    .line 881
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->update(Landroid/content/ContentValues;)V

    .line 882
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 867
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 868
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/settings/ImsProfile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/settings/ImsProfile;)V
    .registers 3
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 876
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->fromJson(Ljava/lang/String;)V

    .line 873
    return-void
.end method

.method private fromJson(Ljava/lang/String;)V
    .registers 4
    .param p1, "json"    # Ljava/lang/String;

    .line 921
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    .line 922
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->splitNetwork()V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    .line 926
    goto :goto_16

    .line 923
    :catch_b
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    .line 925
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 927
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    return-void
.end method

.method public static getAllNetworkNameSet()[Ljava/lang/String;
    .registers 9

    .line 3467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3468
    .local v0, "rtn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->values()[Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    if-ge v4, v2, :cond_2c

    aget-object v5, v1, v4

    .line 3469
    .local v5, "type":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    sget-object v7, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->UNKNOWN:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    aput-object v7, v6, v3

    sget-object v7, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->isOneOf([Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v6

    if-nez v6, :cond_29

    .line 3470
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3468
    .end local v5    # "type":Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 3473
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getChatServiceList()[Ljava/lang/String;
    .registers 1

    .line 831
    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    return-object v0
.end method

.method private getNetwork(I)Lorg/json/JSONObject;
    .registers 3
    .param p1, "type"    # I

    .line 948
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkName(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 3452
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I
    .registers 2
    .param p0, "type"    # Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 3457
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->-$$Nest$fgetmType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I

    move-result v0

    return v0
.end method

.method public static getNetworkType(Ljava/lang/String;)I
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 3462
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->-$$Nest$fgetmType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I

    move-result v0

    return v0
.end method

.method public static getRcsProfileType(Ljava/lang/String;)I
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3536
    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->getProfileType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getRcsServiceList()[Ljava/lang/String;
    .registers 1

    .line 819
    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTapiServiceList()[Ljava/lang/String;
    .registers 1

    .line 827
    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->tapiServices:[Ljava/lang/String;

    return-object v0
.end method

.method private getTimer(Ljava/lang/String;)I
    .registers 4
    .param p1, "timer"    # Ljava/lang/String;

    .line 3117
    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->getTimerMap()Ljava/util/Map;

    move-result-object v0

    .line 3118
    .local v0, "timerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3119
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 3122
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private getTimerMap()Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3126
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3127
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "timer"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3128
    .local v1, "timers":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_31

    aget-object v5, v1, v4

    .line 3129
    .local v5, "t":Ljava/lang/String;
    const-string v6, ":"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3130
    .local v6, "tmp":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2e

    .line 3131
    aget-object v7, v6, v3

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3128
    .end local v5    # "t":Ljava/lang/String;
    .end local v6    # "tmp":[Ljava/lang/String;
    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 3135
    :cond_31
    return-object v0
.end method

.method public static getVoLteServiceList()[Ljava/lang/String;
    .registers 1

    .line 810
    sget-object v0, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    return-object v0
.end method

.method public static hasChatService(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 3503
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0
.end method

.method public static hasChatService(Lcom/sec/ims/settings/ImsProfile;I)Z
    .registers 3
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "networkType"    # I

    .line 3507
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0
.end method

.method public static hasChatService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .registers 4
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "nw"    # Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 3511
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->chatServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3512
    .local v0, "svcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public static hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 3490
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0
.end method

.method public static hasRcsService(Lcom/sec/ims/settings/ImsProfile;I)Z
    .registers 3
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "networkType"    # I

    .line 3494
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0
.end method

.method public static hasRcsService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .registers 4
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "nw"    # Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 3498
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->rcsServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3499
    .local v0, "svcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public static hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z
    .registers 2
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 3477
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0
.end method

.method public static hasVolteService(Lcom/sec/ims/settings/ImsProfile;I)Z
    .registers 3
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "networkType"    # I

    .line 3481
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->from(I)Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z

    move-result v0

    return v0
.end method

.method public static hasVolteService(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Z
    .registers 4
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "nw"    # Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    .line 3485
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/sec/ims/settings/ImsProfile;->volteServices:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3486
    .local v0, "svcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    return v1
.end method

.method public static isRcsService(Ljava/lang/String;)Z
    .registers 7
    .param p0, "service"    # Ljava/lang/String;

    .line 842
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_16

    aget-object v4, v0, v3

    .line 843
    .local v4, "srv":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 844
    const/4 v0, 0x1

    return v0

    .line 842
    .end local v4    # "srv":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 847
    :cond_16
    return v2
.end method

.method public static isRcsUp10Profile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3528
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UP_1.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isRcsUp23AndUp24Profile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3540
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "UP_2.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "UP_2.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static isRcsUp24Profile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3544
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UP_2.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isRcsUp2Profile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3532
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UP_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isRcsUpProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3520
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static isRcsUpTransitionProfile(Ljava/lang/String;)Z
    .registers 2
    .param p0, "rcsProfile"    # Ljava/lang/String;

    .line 3524
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "UP_T"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method protected static trimAudioCodec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 26
    .param p0, "audioCodecStr"    # Ljava/lang/String;
    .param p1, "audioCodecModeStr"    # Ljava/lang/String;
    .param p2, "audioCapabilitiesStr"    # Ljava/lang/String;
    .param p3, "dtmfCodecModeStr"    # Ljava/lang/String;
    .param p4, "enableEvsCodec"    # I

    .line 3204
    const-string v1, "ImsProfile"

    const-string v2, ""

    .line 3205
    .local v2, "audioCodec":Ljava/lang/String;
    const-string v3, ""

    .line 3206
    .local v3, "EVS":Ljava/lang/String;
    const-string v4, ""

    .line 3207
    .local v4, "AMRBE_WB":Ljava/lang/String;
    const-string v5, ""

    .line 3208
    .local v5, "AMRBE":Ljava/lang/String;
    const-string v6, ""

    .line 3209
    .local v6, "AMR_WB":Ljava/lang/String;
    const-string v7, ""

    .line 3210
    .local v7, "AMR":Ljava/lang/String;
    const-string v8, ""

    .line 3211
    .local v8, "AMROPEN":Ljava/lang/String;
    const-string v9, ""

    .line 3212
    .local v9, "DTMFWB":Ljava/lang/String;
    const-string v10, ""

    .line 3213
    .local v10, "DTMF":Ljava/lang/String;
    const-string v11, ""

    .line 3219
    .local v11, "OTHERS":Ljava/lang/String;
    :try_start_16
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3220
    .local v0, "audioCodecMode":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3221
    .local v12, "audioCapabilities":I
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_22} :catch_25

    .line 3222
    .local v13, "dtmfCodecMode":I
    move/from16 v14, p4

    .line 3229
    .local v14, "isEnableEvs":I
    goto :goto_33

    .line 3223
    .end local v0    # "audioCodecMode":I
    .end local v12    # "audioCapabilities":I
    .end local v13    # "dtmfCodecMode":I
    .end local v14    # "isEnableEvs":I
    :catch_25
    move-exception v0

    .line 3224
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v12, "trimAudioCodec: Invalid values. Use default."

    invoke-static {v1, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    const/4 v12, 0x2

    .line 3226
    .local v12, "audioCodecMode":I
    const/4 v13, 0x0

    .line 3227
    .local v13, "audioCapabilities":I
    const/4 v14, 0x0

    .line 3228
    .local v14, "dtmfCodecMode":I
    const/4 v15, 0x0

    move v0, v12

    move v12, v13

    move v13, v14

    move v14, v15

    .line 3231
    .local v0, "audioCodecMode":I
    .local v12, "audioCapabilities":I
    .local v13, "dtmfCodecMode":I
    .local v14, "isEnableEvs":I
    :goto_33
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v2

    .end local v2    # "audioCodec":Ljava/lang/String;
    .local v16, "audioCodec":Ljava/lang/String;
    const-string v2, "trimAudioCodec : audioCodecMode="

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " audioCapabilities="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " dtmfCodecMode="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " isEnableEvs="

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3235
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v15, ","

    move-object/from16 v17, v3

    move-object/from16 v3, p0

    .end local v3    # "EVS":Ljava/lang/String;
    .local v17, "EVS":Ljava/lang/String;
    invoke-direct {v2, v3, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v11

    move-object v11, v10

    move-object v10, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object/from16 v4, v17

    .line 3237
    .end local v17    # "EVS":Ljava/lang/String;
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    .local v3, "OTHERS":Ljava/lang/String;
    .local v4, "EVS":Ljava/lang/String;
    .local v5, "AMRBE_WB":Ljava/lang/String;
    .local v6, "AMRBE":Ljava/lang/String;
    .local v7, "AMR_WB":Ljava/lang/String;
    .local v8, "AMR":Ljava/lang/String;
    .local v9, "AMROPEN":Ljava/lang/String;
    .local v10, "DTMFWB":Ljava/lang/String;
    .local v11, "DTMF":Ljava/lang/String;
    :goto_7e
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v17

    move/from16 v18, v13

    .end local v13    # "dtmfCodecMode":I
    .local v18, "dtmfCodecMode":I
    const-string v19, ""

    if-eqz v17, :cond_1c5

    .line 3238
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 3239
    .local v13, "token":Ljava/lang/String;
    const/16 v17, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_af2

    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .local v20, "tokenizer":Ljava/util/StringTokenizer;
    goto/16 :goto_143

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_9d
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "EVS_B2"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/16 v2, 0xc

    goto/16 :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_ab
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "EVS_B1"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/16 v2, 0xb

    goto/16 :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_b9
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "EVS_B0"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/16 v2, 0xa

    goto/16 :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_c7
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "EVS_A2"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/16 v2, 0x9

    goto/16 :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_d5
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "EVS_A1"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/16 v2, 0x8

    goto/16 :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_e3
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "DTMFWB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x5

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_ef
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "AMR-WB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x2

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_fb
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "AMRBE"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x1

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_107
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "DTMF"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x6

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_113
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "EVS"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x7

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_11f
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "AMR"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x3

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_12b
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "AMROPEN"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x4

    goto :goto_145

    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v2    # "tokenizer":Ljava/util/StringTokenizer;
    :sswitch_137
    move-object/from16 v20, v2

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    const-string v2, "AMRBE-WB"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_143

    const/4 v2, 0x0

    goto :goto_145

    :cond_143
    :goto_143
    move/from16 v2, v17

    :goto_145
    packed-switch v2, :pswitch_data_b28

    .line 3271
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .local v17, "AMROPEN":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .end local v3    # "OTHERS":Ljava/lang/String;
    .local v2, "OTHERS":Ljava/lang/String;
    goto/16 :goto_1bf

    .line 3267
    .end local v2    # "OTHERS":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v3    # "OTHERS":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :pswitch_162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_175

    move-object/from16 v17, v9

    move-object v9, v15

    goto :goto_179

    :cond_175
    move-object/from16 v17, v9

    move-object/from16 v9, v19

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    :goto_179
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3268
    .end local v4    # "EVS":Ljava/lang/String;
    .local v2, "EVS":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3269
    move-object v4, v2

    move-object/from16 v9, v17

    goto :goto_1bf

    .line 3259
    .end local v2    # "EVS":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v4    # "EVS":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :pswitch_196
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "DTMF"

    .line 3260
    .end local v11    # "DTMF":Ljava/lang/String;
    .local v2, "DTMF":Ljava/lang/String;
    move-object v11, v2

    goto :goto_1bf

    .line 3256
    .end local v2    # "DTMF":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v11    # "DTMF":Ljava/lang/String;
    :pswitch_19c
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "DTMFWB"

    .line 3257
    .end local v10    # "DTMFWB":Ljava/lang/String;
    .local v2, "DTMFWB":Ljava/lang/String;
    move-object v10, v2

    goto :goto_1bf

    .line 3253
    .end local v2    # "DTMFWB":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v10    # "DTMFWB":Ljava/lang/String;
    :pswitch_1a2
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "AMROPEN"

    .line 3254
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .local v2, "AMROPEN":Ljava/lang/String;
    move-object v9, v2

    goto :goto_1bf

    .line 3250
    .end local v2    # "AMROPEN":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :pswitch_1a8
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "AMR"

    .line 3251
    .end local v8    # "AMR":Ljava/lang/String;
    .local v2, "AMR":Ljava/lang/String;
    move-object v8, v2

    goto :goto_1bf

    .line 3247
    .end local v2    # "AMR":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v8    # "AMR":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :pswitch_1ae
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "AMR-WB"

    .line 3248
    .end local v7    # "AMR_WB":Ljava/lang/String;
    .local v2, "AMR_WB":Ljava/lang/String;
    move-object v7, v2

    goto :goto_1bf

    .line 3244
    .end local v2    # "AMR_WB":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v7    # "AMR_WB":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :pswitch_1b4
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "AMRBE"

    .line 3245
    .end local v6    # "AMRBE":Ljava/lang/String;
    .local v2, "AMRBE":Ljava/lang/String;
    move-object v6, v2

    goto :goto_1bf

    .line 3241
    .end local v2    # "AMRBE":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v6    # "AMRBE":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :pswitch_1ba
    move-object/from16 v17, v9

    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    const-string v2, "AMRBE-WB"

    .line 3242
    .end local v5    # "AMRBE_WB":Ljava/lang/String;
    .local v2, "AMRBE_WB":Ljava/lang/String;
    move-object v5, v2

    .line 3274
    .end local v2    # "AMRBE_WB":Ljava/lang/String;
    .end local v13    # "token":Ljava/lang/String;
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v5    # "AMRBE_WB":Ljava/lang/String;
    .restart local v9    # "AMROPEN":Ljava/lang/String;
    :goto_1bf
    move/from16 v13, v18

    move-object/from16 v2, v20

    goto/16 :goto_7e

    .line 3276
    .end local v20    # "tokenizer":Ljava/util/StringTokenizer;
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :cond_1c5
    move-object/from16 v20, v2

    move-object/from16 v17, v9

    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v9    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v20    # "tokenizer":Ljava/util/StringTokenizer;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "trimAudioCodec : EVS="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AMRBE_WB="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AMRBE="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AMR-WB="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " AMR="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " DTMFWB="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " DTMF="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " OTHERS="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    const/4 v2, 0x1

    if-ne v14, v2, :cond_230

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_230

    .line 3280
    move-object v2, v4

    .end local v16    # "audioCodec":Ljava/lang/String;
    .local v2, "audioCodec":Ljava/lang/String;
    goto :goto_232

    .line 3282
    .end local v2    # "audioCodec":Ljava/lang/String;
    .restart local v16    # "audioCodec":Ljava/lang/String;
    :cond_230
    move-object/from16 v2, v16

    .end local v16    # "audioCodec":Ljava/lang/String;
    .restart local v2    # "audioCodec":Ljava/lang/String;
    :goto_232
    packed-switch v0, :pswitch_data_b46

    .line 3372
    :pswitch_235
    packed-switch v12, :pswitch_data_b52

    .line 3397
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8ba

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8ba

    move-object v13, v15

    goto/16 :goto_8bc

    .line 3334
    :pswitch_250
    packed-switch v12, :pswitch_data_b5c

    .line 3359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_401

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_401

    move-object v13, v15

    goto/16 :goto_403

    .line 3352
    :pswitch_26b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_282

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_282

    move-object v13, v15

    goto :goto_284

    :cond_282
    move-object/from16 v13, v19

    :goto_284
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3353
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3354
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2b4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2b4

    move-object v13, v15

    goto :goto_2b6

    :cond_2b4
    move-object/from16 v13, v19

    :goto_2b6
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3355
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3356
    goto/16 :goto_96b

    .line 3346
    :pswitch_2d1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2e8

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2e8

    move-object v13, v15

    goto :goto_2ea

    :cond_2e8
    move-object/from16 v13, v19

    :goto_2ea
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3347
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3348
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_31a

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_31a

    move-object v13, v15

    goto :goto_31c

    :cond_31a
    move-object/from16 v13, v19

    :goto_31c
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3349
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3350
    goto/16 :goto_96b

    .line 3336
    :pswitch_337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_34e

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_34e

    move-object v13, v15

    goto :goto_350

    :cond_34e
    move-object/from16 v13, v19

    :goto_350
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3338
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_380

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_380

    move-object v13, v15

    goto :goto_382

    :cond_380
    move-object/from16 v13, v19

    :goto_382
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3339
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3340
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3b2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3b2

    move-object v13, v15

    goto :goto_3b4

    :cond_3b2
    move-object/from16 v13, v19

    :goto_3b4
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3342
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3e4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3e4

    move-object v13, v15

    goto :goto_3e6

    :cond_3e4
    move-object/from16 v13, v19

    :goto_3e6
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3343
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3344
    goto/16 :goto_96b

    .line 3359
    :cond_401
    move-object/from16 v13, v19

    :goto_403
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3360
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3361
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_433

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_433

    move-object v13, v15

    goto :goto_435

    :cond_433
    move-object/from16 v13, v19

    :goto_435
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3363
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_465

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_465

    move-object v13, v15

    goto :goto_467

    :cond_465
    move-object/from16 v13, v19

    :goto_467
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3364
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3365
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_497

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_497

    move-object v13, v15

    goto :goto_499

    :cond_497
    move-object/from16 v13, v19

    :goto_499
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3366
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3367
    goto/16 :goto_96b

    .line 3309
    :pswitch_4b4
    packed-switch v12, :pswitch_data_b66

    .line 3326
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_59d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_59d

    move-object v13, v15

    goto/16 :goto_59f

    .line 3321
    :pswitch_4cf
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4e6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4e6

    move-object v13, v15

    goto :goto_4e8

    :cond_4e6
    move-object/from16 v13, v19

    :goto_4e8
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3322
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3323
    goto/16 :goto_96b

    .line 3317
    :pswitch_503
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_51a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_51a

    move-object v13, v15

    goto :goto_51c

    :cond_51a
    move-object/from16 v13, v19

    :goto_51c
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3318
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3319
    goto/16 :goto_96b

    .line 3311
    :pswitch_537
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_54e

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_54e

    move-object v13, v15

    goto :goto_550

    :cond_54e
    move-object/from16 v13, v19

    :goto_550
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3312
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3313
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_580

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_580

    move-object v13, v15

    goto :goto_582

    :cond_580
    move-object/from16 v13, v19

    :goto_582
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3314
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3315
    goto/16 :goto_96b

    .line 3326
    :cond_59d
    move-object/from16 v13, v19

    :goto_59f
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3327
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3328
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5cf

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5cf

    move-object v13, v15

    goto :goto_5d1

    :cond_5cf
    move-object/from16 v13, v19

    :goto_5d1
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3329
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3330
    goto/16 :goto_96b

    .line 3284
    :pswitch_5ec
    packed-switch v12, :pswitch_data_b70

    .line 3301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6d5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6d5

    move-object v13, v15

    goto/16 :goto_6d7

    .line 3296
    :pswitch_607
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_61e

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_61e

    move-object v13, v15

    goto :goto_620

    :cond_61e
    move-object/from16 v13, v19

    :goto_620
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3297
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3298
    goto/16 :goto_96b

    .line 3292
    :pswitch_63b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_652

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_652

    move-object v13, v15

    goto :goto_654

    :cond_652
    move-object/from16 v13, v19

    :goto_654
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3293
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3294
    goto/16 :goto_96b

    .line 3286
    :pswitch_66f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_686

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_686

    move-object v13, v15

    goto :goto_688

    :cond_686
    move-object/from16 v13, v19

    :goto_688
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3287
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6b8

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6b8

    move-object v13, v15

    goto :goto_6ba

    :cond_6b8
    move-object/from16 v13, v19

    :goto_6ba
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3289
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3290
    goto/16 :goto_96b

    .line 3301
    :cond_6d5
    move-object/from16 v13, v19

    :goto_6d7
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3302
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3303
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_707

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_707

    move-object v13, v15

    goto :goto_709

    :cond_707
    move-object/from16 v13, v19

    :goto_709
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3304
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3305
    goto/16 :goto_96b

    .line 3390
    :pswitch_724
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_73b

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_73b

    move-object v13, v15

    goto :goto_73d

    :cond_73b
    move-object/from16 v13, v19

    :goto_73d
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3391
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3392
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_76d

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_76d

    move-object v13, v15

    goto :goto_76f

    :cond_76d
    move-object/from16 v13, v19

    :goto_76f
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3393
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3394
    goto/16 :goto_96b

    .line 3384
    :pswitch_78a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7a1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7a1

    move-object v13, v15

    goto :goto_7a3

    :cond_7a1
    move-object/from16 v13, v19

    :goto_7a3
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3385
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3386
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7d3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7d3

    move-object v13, v15

    goto :goto_7d5

    :cond_7d3
    move-object/from16 v13, v19

    :goto_7d5
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3387
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3388
    goto/16 :goto_96b

    .line 3374
    :pswitch_7f0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_807

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_807

    move-object v13, v15

    goto :goto_809

    :cond_807
    move-object/from16 v13, v19

    :goto_809
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3375
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3376
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_839

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_839

    move-object v13, v15

    goto :goto_83b

    :cond_839
    move-object/from16 v13, v19

    :goto_83b
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3377
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3378
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_86b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_86b

    move-object v13, v15

    goto :goto_86d

    :cond_86b
    move-object/from16 v13, v19

    :goto_86d
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3379
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3380
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_89d

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_89d

    move-object v13, v15

    goto :goto_89f

    :cond_89d
    move-object/from16 v13, v19

    :goto_89f
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3381
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3382
    goto/16 :goto_96b

    .line 3397
    :cond_8ba
    move-object/from16 v13, v19

    :goto_8bc
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3398
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3399
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8ec

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8ec

    move-object v13, v15

    goto :goto_8ee

    :cond_8ec
    move-object/from16 v13, v19

    :goto_8ee
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3400
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3401
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_91e

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_91e

    move-object v13, v15

    goto :goto_920

    :cond_91e
    move-object/from16 v13, v19

    :goto_920
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3402
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3403
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_950

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_950

    move-object v13, v15

    goto :goto_952

    :cond_950
    move-object/from16 v13, v19

    :goto_952
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3404
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3410
    :goto_96b
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9a1

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9a1

    .line 3411
    const-string v9, "Add AMROPEN"

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3413
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v13, v17

    .end local v17    # "AMROPEN":Ljava/lang/String;
    .local v13, "AMROPEN":Ljava/lang/String;
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_9a3

    .line 3410
    .end local v13    # "AMROPEN":Ljava/lang/String;
    .restart local v17    # "AMROPEN":Ljava/lang/String;
    :cond_9a1
    move-object/from16 v13, v17

    .line 3416
    .end local v17    # "AMROPEN":Ljava/lang/String;
    .restart local v13    # "AMROPEN":Ljava/lang/String;
    :goto_9a3
    packed-switch v18, :pswitch_data_b7a

    .line 3444
    const-string v9, "trimAudioCodec : DTMF is disabled"

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_adf

    .line 3418
    :pswitch_9ad
    packed-switch v12, :pswitch_data_b80

    .line 3435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a92

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a92

    move-object v9, v15

    goto/16 :goto_a94

    .line 3430
    :pswitch_9c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9de

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9de

    goto :goto_9e0

    :cond_9de
    move-object/from16 v15, v19

    :goto_9e0
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3431
    .end local v2    # "audioCodec":Ljava/lang/String;
    .local v1, "audioCodec":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3432
    .end local v1    # "audioCodec":Ljava/lang/String;
    .restart local v2    # "audioCodec":Ljava/lang/String;
    goto/16 :goto_adf

    .line 3426
    :pswitch_9fb
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a11

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a11

    goto :goto_a13

    :cond_a11
    move-object/from16 v15, v19

    :goto_a13
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3427
    .end local v2    # "audioCodec":Ljava/lang/String;
    .restart local v1    # "audioCodec":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3428
    .end local v1    # "audioCodec":Ljava/lang/String;
    .restart local v2    # "audioCodec":Ljava/lang/String;
    goto/16 :goto_adf

    .line 3420
    :pswitch_a2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a45

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a45

    move-object v9, v15

    goto :goto_a47

    :cond_a45
    move-object/from16 v9, v19

    :goto_a47
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3421
    .end local v2    # "audioCodec":Ljava/lang/String;
    .restart local v1    # "audioCodec":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a76

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a76

    goto :goto_a78

    :cond_a76
    move-object/from16 v15, v19

    :goto_a78
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3424
    .end local v1    # "audioCodec":Ljava/lang/String;
    .restart local v2    # "audioCodec":Ljava/lang/String;
    goto :goto_adf

    .line 3435
    :cond_a92
    move-object/from16 v9, v19

    :goto_a94
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3436
    .end local v2    # "audioCodec":Ljava/lang/String;
    .restart local v1    # "audioCodec":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ac3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_ac3

    goto :goto_ac5

    :cond_ac3
    move-object/from16 v15, v19

    :goto_ac5
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3439
    .end local v1    # "audioCodec":Ljava/lang/String;
    .restart local v2    # "audioCodec":Ljava/lang/String;
    nop

    .line 3448
    :goto_adf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_af2
    .sparse-switch
        -0x26e44551 -> :sswitch_137
        -0x97d2710 -> :sswitch_12b
        0xfda6 -> :sswitch_11f
        0x10dc2 -> :sswitch_113
        0x202e29 -> :sswitch_107
        0x3b83469 -> :sswitch_fb
        0x734e0c52 -> :sswitch_ef
        0x78cd52b4 -> :sswitch_e3
        0x7aa16fad -> :sswitch_d5
        0x7aa16fae -> :sswitch_c7
        0x7aa16fcb -> :sswitch_b9
        0x7aa16fcc -> :sswitch_ab
        0x7aa16fcd -> :sswitch_9d
    .end sparse-switch

    :pswitch_data_b28
    .packed-switch 0x0
        :pswitch_1ba
        :pswitch_1b4
        :pswitch_1ae
        :pswitch_1a8
        :pswitch_1a2
        :pswitch_19c
        :pswitch_196
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
    .end packed-switch

    :pswitch_data_b46
    .packed-switch 0x0
        :pswitch_5ec
        :pswitch_4b4
        :pswitch_235
        :pswitch_250
    .end packed-switch

    :pswitch_data_b52
    .packed-switch 0x1
        :pswitch_7f0
        :pswitch_78a
        :pswitch_724
    .end packed-switch

    :pswitch_data_b5c
    .packed-switch 0x1
        :pswitch_337
        :pswitch_2d1
        :pswitch_26b
    .end packed-switch

    :pswitch_data_b66
    .packed-switch 0x1
        :pswitch_537
        :pswitch_503
        :pswitch_4cf
    .end packed-switch

    :pswitch_data_b70
    .packed-switch 0x1
        :pswitch_66f
        :pswitch_63b
        :pswitch_607
    .end packed-switch

    :pswitch_data_b7a
    .packed-switch 0x0
        :pswitch_9ad
    .end packed-switch

    :pswitch_data_b80
    .packed-switch 0x1
        :pswitch_a2e
        :pswitch_9fb
        :pswitch_9c8
    .end packed-switch
.end method


# virtual methods
.method public addImpu(Ljava/lang/String;)V
    .registers 4
    .param p1, "impu"    # Ljava/lang/String;

    .line 1306
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1307
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method public clone()Lcom/sec/ims/settings/ImsProfile;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3516
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->clone()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 3163
    const/4 v0, 0x0

    return v0
.end method

.method public dump()Ljava/lang/String;
    .registers 2

    .line 3183
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enable(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 1009
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "enabled"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1010
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 3188
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 3189
    :cond_4
    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_21

    .line 3191
    :cond_11
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 3192
    .local v0, "that":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3189
    .end local v0    # "that":Lcom/sec/ims/settings/ImsProfile;
    :cond_21
    :goto_21
    const/4 v0, 0x0

    return v0
.end method

.method public get100tryingTimer()I
    .registers 2

    .line 2267
    const-string v0, "timer_100trying"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAcb()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3159
    const-string v0, "acb"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .registers 2

    .line 2448
    const-string v0, "accessToken"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAddHistinfo()Z
    .registers 2

    .line 2986
    const-string v0, "add_histinfo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getAllServiceSet()Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1381
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1382
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1384
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_69

    .line 1385
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_69

    .line 1386
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1387
    .local v3, "n":Lorg/json/JSONObject;
    const-string v4, "services"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1388
    .local v4, "serviceArr":Lorg/json/JSONArray;
    if-nez v4, :cond_3f

    .line 1389
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllServiceSet: No services array in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImsProfile"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    goto :goto_66

    .line 1393
    :cond_3f
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 1394
    .local v5, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_45
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_55

    .line 1395
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1394
    add-int/lit8 v6, v6, 0x1

    goto :goto_45

    .line 1397
    .end local v6    # "j":I
    :cond_55
    const-string v6, "type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    .end local v3    # "n":Lorg/json/JSONObject;
    .end local v4    # "serviceArr":Lorg/json/JSONArray;
    .end local v5    # "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_66
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1400
    .end local v2    # "i":I
    :cond_69
    return-object v0
.end method

.method public getAllServiceSetFromAllNetwork()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1373
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1374
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1375
    .local v2, "svcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1376
    .end local v2    # "svcs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_11

    .line 1377
    :cond_21
    return-object v0
.end method

.method public getAmrnbMode()Ljava/lang/String;
    .registers 2

    .line 2355
    const-string v0, "amrnb_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmrnbbeMaxRed()I
    .registers 2

    .line 2616
    const-string v0, "amrnbbe_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrnbbePayload()I
    .registers 2

    .line 2520
    const-string v0, "amrnbbe_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrnboaMaxRed()I
    .registers 2

    .line 2612
    const-string v0, "amrnboa_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrnboaPayload()I
    .registers 2

    .line 2524
    const-string v0, "amrnboa_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmropenPayload()I
    .registers 2

    .line 2536
    const-string v0, "amropen_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwbMode()Ljava/lang/String;
    .registers 2

    .line 2359
    const-string v0, "amrwb_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmrwbbeMaxRed()I
    .registers 2

    .line 2624
    const-string v0, "amrwbbe_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwbbePayload()I
    .registers 2

    .line 2528
    const-string v0, "amrwbbe_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwboaMaxRed()I
    .registers 2

    .line 2620
    const-string v0, "amrwboa_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAmrwboaPayload()I
    .registers 2

    .line 2532
    const-string v0, "amrwboa_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .registers 2

    .line 2093
    const-string v0, "app_id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1186
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getAsContentValues()Landroid/content/ContentValues;
    .registers 6

    .line 1131
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1132
    .local v0, "cv":Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 1133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1134
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1135
    .local v3, "obj":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_28

    .line 1136
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_49

    .line 1137
    :cond_28
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_33

    .line 1138
    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_49

    .line 1139
    :cond_33
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3e

    .line 1140
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 1141
    :cond_3e
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_49

    .line 1142
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_49
    :goto_49
    goto :goto_b

    .line 1145
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4a
    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1190
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 1194
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAsJSONObjectList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1217
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1218
    .local v1, "arr":Lorg/json/JSONArray;
    if-eqz v1, :cond_1e

    .line 1219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 1220
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1224
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1198
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAsStringList(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1205
    .local v1, "arr":Lorg/json/JSONArray;
    if-eqz v1, :cond_1e

    .line 1206
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 1207
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1206
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1211
    .end local v2    # "i":I
    :cond_1e
    return-object v0
.end method

.method public getAudioAS()I
    .registers 2

    .line 2484
    const-string v0, "audio_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioAvpf()I
    .registers 2

    .line 2428
    const-string v0, "audio_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioCapabilities()Ljava/lang/String;
    .registers 2

    .line 2648
    const-string v0, "audio_capabilities"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCodec()Ljava/lang/String;
    .registers 6

    .line 2375
    const-string v0, "audio_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAudioCodecMode()Ljava/lang/String;

    move-result-object v1

    .line 2376
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAudioCapabilities()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getDtmfCodecMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableEvsCodec()I

    move-result v4

    .line 2375
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sec/ims/settings/ImsProfile;->trimAudioCodec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioCodecMode()Ljava/lang/String;
    .registers 2

    .line 2343
    const-string v0, "audio_codec_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioDscp()I
    .registers 2

    .line 2420
    const-string v0, "audio_dscp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioPortEnd()I
    .registers 2

    .line 2404
    const-string v0, "audio_port_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioPortStart()I
    .registers 2

    .line 2384
    const-string v0, "audio_port_start"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioRR()I
    .registers 2

    .line 2492
    const-string v0, "audio_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioRS()I
    .registers 2

    .line 2488
    const-string v0, "audio_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioRtcpXr()I
    .registers 2

    .line 2708
    const-string v0, "audio_rtcpxr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAudioSrtp()I
    .registers 2

    .line 2432
    const-string v0, "audio_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAuthAlgorithm()Ljava/lang/String;
    .registers 2

    .line 1723
    const-string v0, "auth_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthName()Ljava/lang/String;
    .registers 2

    .line 1440
    const-string v0, "authname"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailCacheExpiry()I
    .registers 2

    .line 2163
    const-string v0, "avail_cache_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBadEventExpiry()I
    .registers 2

    .line 2159
    const-string v0, "bad_event_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getBlockDeregiOnSrvcc()Z
    .registers 2

    .line 3171
    const-string v0, "block_deregi_on_srvcc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getCapCacheExp()I
    .registers 2

    .line 2167
    const-string v0, "cap_cache_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCapPollInterval()I
    .registers 2

    .line 2191
    const-string v0, "cap_poll_interval"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getCmcType()I
    .registers 10

    .line 1603
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, "profileName":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_68

    .line 1605
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v3, :sswitch_data_6a

    :cond_14
    goto :goto_5a

    :sswitch_15
    const-string v3, "SamsungCMC_WIFI_HS_PD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v2, 0x6

    goto :goto_5a

    :sswitch_1f
    const-string v3, "SamsungCMC_WIFI_P2P_SD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v4

    goto :goto_5a

    :sswitch_29
    const-string v3, "SamsungCMC_WIFI_P2P_PD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v5

    goto :goto_5a

    :sswitch_33
    const-string v3, "SamsungCMC_WIFI_SD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v6

    goto :goto_5a

    :sswitch_3d
    const-string v3, "SamsungCMC_WIFI_PD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v7

    goto :goto_5a

    :sswitch_47
    const-string v3, "SamsungCMC_SD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v8

    goto :goto_5a

    :sswitch_51
    const-string v3, "SamsungCMC_PD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    move v2, v1

    :goto_5a
    packed-switch v2, :pswitch_data_88

    .line 1624
    return v1

    .line 1622
    :pswitch_5e
    return v4

    .line 1619
    :pswitch_5f
    const/16 v1, 0x8

    return v1

    .line 1617
    :pswitch_62
    const/4 v1, 0x7

    return v1

    .line 1614
    :pswitch_64
    return v5

    .line 1612
    :pswitch_65
    return v6

    .line 1609
    :pswitch_66
    return v7

    .line 1607
    :pswitch_67
    return v8

    .line 1627
    :cond_68
    return v1

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x797bcccc -> :sswitch_51
        -0x797bcc6f -> :sswitch_47
        -0x354f6de2 -> :sswitch_3d
        -0x354f6d85 -> :sswitch_33
        -0x31987b1 -> :sswitch_29
        -0x3198754 -> :sswitch_1f
        0x3953553e -> :sswitch_15
    .end sparse-switch

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_62
        :pswitch_5f
        :pswitch_5e
    .end packed-switch
.end method

.method public getConferenceDialogType()Ljava/lang/String;
    .registers 2

    .line 2219
    const-string v0, "conference_dialog_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceReferUriAsserted()Ljava/lang/String;
    .registers 2

    .line 2231
    const-string v0, "conference_referuri_asserted"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceReferUriType()Ljava/lang/String;
    .registers 2

    .line 2223
    const-string v0, "conference_referuri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceRemoveReferUriType()Ljava/lang/String;
    .registers 2

    .line 2227
    const-string v0, "conference_remove_referuri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceSubscribe()Ljava/lang/String;
    .registers 2

    .line 2215
    const-string v0, "conference_subscribe"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceSupportPrematureEnd()Z
    .registers 2

    .line 2239
    const-string v0, "conference_support_premature_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getConferenceUri()Ljava/lang/String;
    .registers 2

    .line 2207
    const-string v0, "conference_uri"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConferenceUriMccmncType()I
    .registers 2

    .line 2211
    const-string v0, "conference_uri_mccmnc_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getConferenceUseAnonymousUpdate()Ljava/lang/String;
    .registers 2

    .line 2235
    const-string v0, "conference_use_anonymous_update"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfidenceLevel()I
    .registers 2

    .line 3653
    const-string v0, "confidence_level"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getControlDscp()I
    .registers 2

    .line 1480
    const-string v0, "control_dscp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDbrTimer()I
    .registers 2

    .line 2287
    const-string v0, "dbr_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDefaultMcc()Ljava/lang/String;
    .registers 2

    .line 1241
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultMnc()Ljava/lang/String;
    .registers 2

    .line 1272
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDelayPcscfChangeDuringCall()Z
    .registers 2

    .line 3628
    const-string v0, "delay_pcscf_change_during_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDeregTimeout(I)I
    .registers 5
    .param p1, "network"    # I

    .line 2073
    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 2074
    .local v0, "n":Lorg/json/JSONObject;
    const/16 v1, 0xfa0

    if-eqz v0, :cond_f

    .line 2075
    const-string v2, "dereg_timeout"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 2078
    :cond_f
    return v1
.end method

.method public getDisallowReregi()Z
    .registers 2

    .line 1760
    const-string v0, "disallow_reregi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getDisplayFormat()Ljava/lang/String;
    .registers 2

    .line 2367
    const-string v0, "display_format"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFormatHevc()Ljava/lang/String;
    .registers 2

    .line 2371
    const-string v0, "display_format_hevc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    .line 2101
    const-string v0, "display_name"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDmPollingPeriod()I
    .registers 2

    .line 3070
    const-string v0, "dm_polling_period"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDomain()Ljava/lang/String;
    .registers 2

    .line 1318
    const-string v0, "domain"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfCodecMode()Ljava/lang/String;
    .registers 2

    .line 2640
    const-string v0, "dtmf_codec_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDtmfMode()I
    .registers 2

    .line 2656
    const-string v0, "dtmf_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDtmfNbPayload()I
    .registers 2

    .line 2604
    const-string v0, "dtmf_nb_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDtmfWbPayload()I
    .registers 2

    .line 2608
    const-string v0, "dtmf_wb_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDuid()Ljava/lang/String;
    .registers 2

    .line 2440
    const-string v0, "duid"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getE911InviteTo18x()I
    .registers 2

    .line 3641
    const-string v0, "t_e911_invite_to_18x"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getE911PdnSelectionVowifi()I
    .registers 2

    .line 3645
    const-string v0, "e911_pdn_selection_vowifi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getE911RegiTime()I
    .registers 2

    .line 3643
    const-string v0, "t_e911_regi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEarlyMediaRtpTimeoutTimer()I
    .registers 2

    .line 3038
    const-string v0, "early_media_rtp_timeout_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEcallCsfbWithoutActionTag()Z
    .registers 2

    .line 2982
    const-string v0, "ecall_csfb_without_action_tag"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEctNoHoldForActiveCall()Z
    .registers 2

    .line 3580
    const-string v0, "ect_no_hold_for_active_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEmm()I
    .registers 2

    .line 2424
    const-string v0, "emm"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnableAvSync()Z
    .registers 2

    .line 2339
    const-string v0, "enable_av_sync"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableEvsCodec()I
    .registers 8

    .line 2716
    const-string v0, "gcf_vonr_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ImsProfile"

    if-eqz v0, :cond_15

    .line 2717
    const-string v0, "getEnableEvsCodec(enable): force enable EVS for GCF VoNR mode by ImsSettings APP"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    return v1

    .line 2721
    :cond_15
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_IMS_CONFIG_EVS_MAX_HW_BANDWIDTH"

    const-string v4, "swb"

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2722
    .local v0, "evsHwBW":Ljava/lang/String;
    const-string v3, "evs_default_bandwidth"

    invoke-virtual {p0, v3}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2724
    .local v3, "evsSwBW":Ljava/lang/String;
    const-string v5, "wb"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_65

    const-string v5, "nb-swb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 2725
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnableEvsCodec(disable): evsHwBW("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") + evsSwBW("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    return v6

    .line 2728
    :cond_65
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    .line 2729
    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EVS"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 2730
    const-string v2, "enable_evs_codec"

    invoke-virtual {p0, v2}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v6

    .line 2728
    :goto_7f
    return v1
.end method

.method public getEnableRcs()Z
    .registers 2

    .line 2119
    const-string v0, "enable_rcs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableRcsChat()Z
    .registers 2

    .line 2123
    const-string v0, "enable_rcs_chat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableRtcpOnActiveCall()Z
    .registers 2

    .line 2335
    const-string v0, "enable_rtcp_on_active_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableScr()Z
    .registers 2

    .line 2644
    const-string v0, "enable_scr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnableStatus()I
    .registers 2

    .line 1005
    const-string v0, "enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEnableVerstat()Z
    .registers 2

    .line 3139
    const-string v0, "enable_verstat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnabledNetwork()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 983
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 984
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 985
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_2e

    .line 986
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 987
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 988
    .local v3, "n":Lorg/json/JSONObject;
    const-string v4, "enabled"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 989
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 986
    .end local v3    # "n":Lorg/json/JSONObject;
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 993
    .end local v2    # "i":I
    :cond_2e
    return-object v0
.end method

.method public getEncAlgorithm()Ljava/lang/String;
    .registers 2

    .line 1715
    const-string v0, "enc_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncrNullRoaming()Z
    .registers 2

    .line 1675
    const-string v0, "encr_null_roaming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEvs2ndPayload()I
    .registers 2

    .line 2842
    const-string v0, "evs_2nd_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEvsBandwidthReceive()Ljava/lang/String;
    .registers 2

    .line 2826
    const-string v0, "evs_bandwidth_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBandwidthReceiveExt()Ljava/lang/String;
    .registers 2

    .line 2898
    const-string v0, "evs_bandwidth_receive_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBandwidthSend()Ljava/lang/String;
    .registers 2

    .line 2818
    const-string v0, "evs_bandwidth_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBandwidthSendExt()Ljava/lang/String;
    .registers 2

    .line 2890
    const-string v0, "evs_bandwidth_send_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBitRateReceive()Ljava/lang/String;
    .registers 2

    .line 2810
    const-string v0, "evs_bit_rate_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBitRateReceiveExt()Ljava/lang/String;
    .registers 2

    .line 2882
    const-string v0, "evs_bit_rate_receive_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBitRateSend()Ljava/lang/String;
    .registers 2

    .line 2802
    const-string v0, "evs_bit_rate_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsBitRateSendExt()Ljava/lang/String;
    .registers 2

    .line 2874
    const-string v0, "evs_bit_rate_send_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsChannelAwareReceive()Ljava/lang/String;
    .registers 2

    .line 2786
    const-string v0, "evs_channel_aware_receive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsChannelRecv()Ljava/lang/String;
    .registers 2

    .line 2778
    const-string v0, "evs_channel_recv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsChannelSend()Ljava/lang/String;
    .registers 2

    .line 2770
    const-string v0, "evs_channel_send"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsCodecModeRequest()Ljava/lang/String;
    .registers 2

    .line 2794
    const-string v0, "evs_codec_mode_request"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDefaultBandwidth()Ljava/lang/String;
    .registers 2

    .line 2850
    const-string v0, "evs_default_bandwidth"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDefaultBitrate()Ljava/lang/String;
    .registers 2

    .line 2858
    const-string v0, "evs_default_bitrate"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDiscontinuousTransmission()Ljava/lang/String;
    .registers 2

    .line 2738
    const-string v0, "evs_discontinuous_transmission"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsDtxRecv()Ljava/lang/String;
    .registers 2

    .line 2746
    const-string v0, "evs_dtx_recv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsHeaderFull()Ljava/lang/String;
    .registers 2

    .line 2754
    const-string v0, "evs_header_full"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsLimitedCodec()Ljava/lang/String;
    .registers 2

    .line 2906
    const-string v0, "evs_limited_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsMaxRed()I
    .registers 2

    .line 2628
    const-string v0, "evs_max_red"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEvsModeSwitch()Ljava/lang/String;
    .registers 2

    .line 2762
    const-string v0, "evs_mode_switch"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEvsPayload()I
    .registers 2

    .line 2834
    const-string v0, "evs_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEvsPayloadExt()I
    .registers 2

    .line 2866
    const-string v0, "evs_payload_ext"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getEvsUseDefaultRtcpBw()Z
    .registers 2

    .line 2910
    const-string v0, "evs_use_default_rtcp_bw"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getExcludePaniVowifiInitialRegi()Z
    .registers 2

    .line 3596
    const-string v0, "exclude_pani_vowifi_initial_regi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getExtImpuList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1292
    const-string v0, "ext_impu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedPublishTimer()I
    .registers 2

    .line 2147
    const-string v0, "extended_publish_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFramerate()I
    .registers 2

    .line 2363
    const-string v0, "framerate"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFullCodecOfferRequired()Z
    .registers 2

    .line 2315
    const-string v0, "is_full_codec_offer_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getH263QcifPayload()I
    .registers 2

    .line 2596
    const-string v0, "h263_qcif_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264720pPayload()I
    .registers 2

    .line 2564
    const-string v0, "h264_720p_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264720plPayload()I
    .registers 2

    .line 2568
    const-string v0, "h264_720pl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264CifPayload()I
    .registers 2

    .line 2588
    const-string v0, "h264_cif_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264CiflPayload()I
    .registers 2

    .line 2592
    const-string v0, "h264_cifl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264QvgaPayload()I
    .registers 2

    .line 2580
    const-string v0, "h264_qvga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264QvgalPayload()I
    .registers 2

    .line 2584
    const-string v0, "h264_qvgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264VgaPayload()I
    .registers 2

    .line 2572
    const-string v0, "h264_vga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH264VgalPayload()I
    .registers 2

    .line 2576
    const-string v0, "h264_vgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265Hd720pPayload()I
    .registers 2

    .line 2556
    const-string v0, "h265_hd720p_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265Hd720plPayload()I
    .registers 2

    .line 2560
    const-string v0, "h265_hd720pl_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265QvgaPayload()I
    .registers 2

    .line 2540
    const-string v0, "h265_qvga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265QvgalPayload()I
    .registers 2

    .line 2544
    const-string v0, "h265_qvgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265VgaPayload()I
    .registers 2

    .line 2548
    const-string v0, "h265_vga_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getH265VgalPayload()I
    .registers 2

    .line 2552
    const-string v0, "h265_vgal_payload"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getHashAlgoType()I
    .registers 2

    .line 3082
    const-string v0, "hash_algo_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2

    .line 997
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIgnoreRtcpTimeoutOnHoldCall()Z
    .registers 2

    .line 2331
    const-string v0, "ignore_rtcp_timeout_on_hold_call"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getImpi()Ljava/lang/String;
    .registers 2

    .line 1276
    const-string v0, "impi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpuList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1284
    const-string v0, "impu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInviteTimeout()I
    .registers 2

    .line 2652
    const-string v0, "invite_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIpVer()I
    .registers 4

    .line 1524
    const-string v0, "ipver"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1525
    .local v0, "ipVer":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 1526
    const-string v1, "ipv4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1527
    return v2

    .line 1528
    :cond_16
    const-string v1, "ipv6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1529
    const/4 v1, 0x2

    return v1

    .line 1530
    :cond_20
    const-string v1, "ipv4v6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1531
    const/4 v1, 0x3

    return v1

    .line 1535
    :cond_2a
    return v2
.end method

.method public getIpVersionName()Ljava/lang/String;
    .registers 2

    .line 1555
    const-string v0, "ipver"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsTransportNeeded()Z
    .registers 2

    .line 1687
    const-string v0, "need_transport_in_contact"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLastPaniHeader()Ljava/lang/String;
    .registers 2

    .line 3090
    const-string v0, "last_pani_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLboPcscfAddressList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3042
    const-string v0, "lbo_pcscf_address"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLboPcscfPort()I
    .registers 2

    .line 3050
    const-string v0, "lbo_pcscf_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLocationAcquireFail()I
    .registers 2

    .line 3647
    const-string v0, "t_location_acquire_fail"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLocationAcquireFailVolte()I
    .registers 2

    .line 3649
    const-string v0, "t_location_acquire_fail_volte"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getLte911Fail()I
    .registers 2

    .line 3635
    const-string v0, "t_lte_911_fail"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxPTime()I
    .registers 2

    .line 2704
    const-string v0, "maxptime"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMcc()Ljava/lang/String;
    .registers 5

    .line 1091
    const-string v0, "mcc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "mcc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1093
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v1

    .line 1094
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1095
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1099
    .end local v1    # "operator":Ljava/lang/String;
    :cond_1d
    return-object v0
.end method

.method public getMdmnType()Ljava/lang/String;
    .registers 2

    .line 1579
    const-string v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTypeRestrictionPolicy()Ljava/lang/String;
    .registers 2

    .line 3556
    const-string v0, "media_type_restriction_policy"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSe()I
    .registers 2

    .line 2275
    const-string v0, "min_se"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMnc()Ljava/lang/String;
    .registers 4

    .line 1107
    const-string v0, "mnc"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1108
    .local v0, "mnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1109
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getOperator()Ljava/lang/String;

    move-result-object v1

    .line 1110
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1111
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1115
    .end local v1    # "operator":Ljava/lang/String;
    :cond_1c
    return-object v0
.end method

.method public getMnoName()Ljava/lang/String;
    .registers 2

    .line 1083
    const-string v0, "mnoname"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMssSize()I
    .registers 2

    .line 2065
    const-string v0, "mss_size"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 1075
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedAutoconfig()Z
    .registers 2

    .line 1845
    const-string v0, "need_autoconfig"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedCheckAllowedMethodForRefresh()Z
    .registers 2

    .line 3612
    const-string v0, "need_check_allowed_method_for_refresh"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedIpv4Dns()Z
    .registers 2

    .line 1837
    const-string v0, "need_ipv4_dns"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedNaptrDns()Z
    .registers 2

    .line 1833
    const-string v0, "need_naptr_dns"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedOmadmConfig()Z
    .registers 2

    .line 1853
    const-string v0, "need_omadm_config"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedPidfRat()I
    .registers 8

    .line 1805
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_9

    .line 1806
    return v1

    .line 1809
    :cond_9
    const-string v0, "need_pidf_rat"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "value":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1811
    .local v2, "pidfRatType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pidfRatType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ImsProfile"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_59

    .line 1813
    const-string v3, " "

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1814
    .local v3, "results":[Ljava/lang/String;
    array-length v4, v3

    :goto_3d
    if-ge v1, v4, :cond_59

    aget-object v5, v3, v1

    .line 1815
    .local v5, "s":Ljava/lang/String;
    const-string v6, "wifi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1816
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 1817
    :cond_4c
    const-string v6, "lte"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1818
    add-int/lit8 v2, v2, 0x2

    .line 1814
    .end local v5    # "s":Ljava/lang/String;
    :cond_56
    :goto_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 1822
    .end local v3    # "results":[Ljava/lang/String;
    :cond_59
    return v2
.end method

.method public getNeedPidfSipMsg()I
    .registers 8

    .line 1772
    const-string v0, "need_pidf_sip_msg"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1773
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1774
    .local v1, "pidfSipType":I
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_10

    .line 1775
    return v3

    .line 1777
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNeedPidfSipMsg : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ImsProfile"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 1779
    const-string v2, " "

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1780
    .local v2, "result":[Ljava/lang/String;
    array-length v4, v2

    :goto_3d
    if-ge v3, v4, :cond_7a

    aget-object v5, v2, v3

    .line 1781
    .local v5, "s":Ljava/lang/String;
    const-string v6, "register"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1782
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 1783
    :cond_4c
    const-string v6, "reregister"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    .line 1784
    add-int/lit8 v1, v1, 0x2

    goto :goto_77

    .line 1785
    :cond_57
    const-string v6, "invite"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 1786
    add-int/lit8 v1, v1, 0x4

    goto :goto_77

    .line 1787
    :cond_62
    const-string v6, "reinvite"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 1788
    add-int/lit8 v1, v1, 0x8

    goto :goto_77

    .line 1789
    :cond_6d
    const-string v6, "invite_response"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1790
    add-int/lit8 v1, v1, 0x10

    .line 1780
    .end local v5    # "s":Ljava/lang/String;
    :cond_77
    :goto_77
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 1794
    .end local v2    # "result":[Ljava/lang/String;
    :cond_7a
    return v1
.end method

.method public getNeedRemoveE911TimerOn18x()Z
    .registers 2

    .line 3639
    const-string v0, "need_remove_e911_timer_on_18x"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNeedStartE911TimerOnAlerting()Z
    .registers 2

    .line 3637
    const-string v0, "need_start_e911_timer_on_alerting"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6
    .param p1, "type"    # Ljava/lang/String;

    .line 962
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 963
    .local v0, "networkArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_25

    .line 964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 965
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 966
    .local v2, "network":Lorg/json/JSONObject;
    const-string v3, "type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1f} :catch_26

    if-eqz v3, :cond_22

    .line 967
    return-object v2

    .line 964
    .end local v2    # "network":Lorg/json/JSONObject;
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 973
    .end local v0    # "networkArray":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_25
    goto :goto_4f

    .line 971
    :catch_26
    move-exception v0

    .line 972
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsProfile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkNameSet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1037
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1039
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1040
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_26

    .line 1041
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 1042
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1041
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1045
    .end local v2    # "i":I
    :cond_26
    return-object v0
.end method

.method public getNetworkSet()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1361
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1362
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1364
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_2e

    .line 1365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2e

    .line 1366
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1365
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1369
    .end local v2    # "i":I
    :cond_2e
    return-object v0
.end method

.method public getNotifyCallDowngraded()I
    .registers 2

    .line 3604
    const-string v0, "notify_call_downgraded"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getNotifyCodecOnEstablished()Z
    .registers 2

    .line 2347
    const-string v0, "notify_codec_on_established"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getNotifyHistoryInfo()Ljava/lang/String;
    .registers 2

    .line 1913
    const-string v0, "notify_history_info"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOipFromPreferred()Ljava/lang/String;
    .registers 2

    .line 3098
    const-string v0, "oip_from_preferred"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .registers 3

    .line 1123
    const-string v0, "representative_plmn"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "leadingOperaotr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1125
    return-object v0

    .line 1127
    :cond_d
    const-string v1, ""

    return-object v1
.end method

.method public getPTime()I
    .registers 2

    .line 2700
    const-string v0, "ptime"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPacketizationMode()Ljava/lang/String;
    .registers 2

    .line 2632
    const-string v0, "packetization_mode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .line 1448
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1456
    const-string v0, "pcscf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPcscfPreference()I
    .registers 2

    .line 1464
    const-string v0, "pcscf_pref"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPdn()Ljava/lang/String;
    .registers 2

    .line 1326
    const-string v0, "pdn"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPdnType()I
    .registers 7

    .line 1334
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    .line 1335
    .local v0, "pdn":Ljava/lang/String;
    const/4 v1, -0x1

    if-eqz v0, :cond_85

    .line 1336
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_86

    :cond_10
    goto :goto_57

    :sswitch_11
    const-string v2, "emergency"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x3

    goto :goto_58

    :sswitch_1b
    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x6

    goto :goto_58

    :sswitch_25
    const-string v2, "internet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v3

    goto :goto_58

    :sswitch_2f
    const-string v2, "swlan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x5

    goto :goto_58

    :sswitch_39
    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_58

    :sswitch_43
    const-string v2, "ims"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v4

    goto :goto_58

    :sswitch_4d
    const-string v2, "p2p-wlan"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x4

    goto :goto_58

    :goto_57
    move v2, v1

    :goto_58
    const-string v5, "ImsProfile"

    packed-switch v2, :pswitch_data_a4

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PDN not null and not matched, value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    return v1

    .line 1351
    :pswitch_74
    return v1

    .line 1348
    :pswitch_75
    const-string v1, "PDN_WIFI_DIRECT or PDN_WIFI_HS"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    sget v1, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    return v1

    .line 1344
    :pswitch_7d
    const/16 v1, 0xf

    return v1

    .line 1342
    :pswitch_80
    return v3

    .line 1340
    :pswitch_81
    return v4

    .line 1338
    :pswitch_82
    const/16 v1, 0xb

    return v1

    .line 1357
    :cond_85
    return v1

    :sswitch_data_86
    .sparse-switch
        -0x76b42abf -> :sswitch_4d
        0x197cf -> :sswitch_43
        0x37af15 -> :sswitch_39
        0x68c48b5 -> :sswitch_2f
        0x21ffc741 -> :sswitch_25
        0x5c13d641 -> :sswitch_1b
        0x6118c591 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x0
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7d
        :pswitch_75
        :pswitch_75
        :pswitch_74
    .end packed-switch
.end method

.method public getPolicyOnLocalNumbers()Ljava/lang/String;
    .registers 2

    .line 3151
    const-string v0, "policy_on_local_numbers"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPollListSubExp()I
    .registers 2

    .line 2183
    const-string v0, "poll_list_sub_exp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrecondtionInitialSendrecv()Z
    .registers 2

    .line 2307
    const-string v0, "precondtion_initial_sendrecv"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getPriDeviceIdWithURN()Ljava/lang/String;
    .registers 2

    .line 2456
    const-string v0, "priDeviceIdWithURN"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .registers 2

    .line 1432
    const-string v0, "priority"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrivacyHeaderRestricted()Ljava/lang/String;
    .registers 2

    .line 2962
    const-string v0, "privacy_header_restricted"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishErrRetryTimer()I
    .registers 2

    .line 2179
    const-string v0, "publish_err_retry_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPublishExpiry()I
    .registers 2

    .line 2143
    const-string v0, "publish_expiry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPublishTimer()I
    .registers 2

    .line 2175
    const-string v0, "publish_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPullingServerUri()Ljava/lang/String;
    .registers 2

    .line 2195
    const-string v0, "pulling_server_uri"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQValue()I
    .registers 2

    .line 2203
    const-string v0, "qvalue"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRPort()I
    .registers 2

    .line 2049
    const-string v0, "rport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRTCPTimeout()I
    .registers 2

    .line 2327
    const-string v0, "rtcp_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRTPTimeout()I
    .registers 2

    .line 2323
    const-string v0, "rtp_timeout"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRcsConfigMark()Ljava/lang/String;
    .registers 2

    .line 1691
    const-string v0, "config_version_mark"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .registers 2

    .line 1679
    const-string v0, "rcs_profile"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRcsProfileType()I
    .registers 2

    .line 1683
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile$RCS_PROFILE;->getProfileType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getRcsTelephonyFeatureTagRequired()Z
    .registers 2

    .line 2311
    const-string v0, "is_rcs_telephony_feature_tag_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getRegExpire()I
    .registers 2

    .line 2319
    const-string v0, "reg_expires"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegRetryBaseTime()I
    .registers 2

    .line 2259
    const-string v0, "reg_retry_base_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegRetryMaxTime()I
    .registers 2

    .line 2263
    const-string v0, "reg_retry_max_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRegRetryPcscfPolicyOn403()Ljava/lang/String;
    .registers 2

    .line 2958
    const-string v0, "reg_retry_pcscf_policy_on_403"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegistrationAlgorithm()Ljava/lang/String;
    .registers 2

    .line 1559
    const-string v0, "regi_algo"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteUriType()Ljava/lang/String;
    .registers 2

    .line 2199
    const-string v0, "remote_uri_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLocationTiming()I
    .registers 8

    .line 3656
    const-string v0, "request_location_timing"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3657
    .local v0, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3658
    .local v1, "requestLocationTiming":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequestLocationTiming : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsProfile"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 3660
    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3661
    .local v2, "result":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_35
    if-ge v4, v3, :cond_5c

    aget-object v5, v2, v4

    .line 3662
    .local v5, "s":Ljava/lang/String;
    const-string v6, "emergency_call"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 3663
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    .line 3664
    :cond_44
    const-string v6, "epdg_available_user_agreement"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 3665
    add-int/lit8 v1, v1, 0x2

    goto :goto_59

    .line 3666
    :cond_4f
    const-string v6, "periodic"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3667
    add-int/lit8 v1, v1, 0x4

    .line 3661
    .end local v5    # "s":Ljava/lang/String;
    :cond_59
    :goto_59
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 3671
    .end local v2    # "result":[Ljava/lang/String;
    :cond_5c
    return v1
.end method

.method public getReregiOnRatChange()I
    .registers 4

    .line 1731
    const/4 v0, 0x0

    .line 1732
    .local v0, "result":I
    const-string v1, "reregi_on_ratchange"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1734
    .local v1, "v":Ljava/lang/String;
    const-string v2, "off_rat_change"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1735
    const/4 v0, 0x1

    goto :goto_24

    .line 1736
    :cond_11
    const-string v2, "force_nr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1737
    const/4 v0, 0x2

    goto :goto_24

    .line 1738
    :cond_1b
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1739
    const/4 v0, 0x3

    .line 1742
    :cond_24
    :goto_24
    return v0
.end method

.method public getRetryInviteOnTcpReset()Z
    .registers 2

    .line 2954
    const-string v0, "retry_invite_on_tcp_reset"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getRingbackTimer()I
    .registers 2

    .line 2291
    const-string v0, "ringback_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getRingingTimer()I
    .registers 2

    .line 2283
    const-string v0, "ringing_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSaClientPort()I
    .registers 2

    .line 1699
    const-string v0, "secure_client_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSaServerPort()I
    .registers 2

    .line 1707
    const-string v0, "secure_server_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScmVersion()I
    .registers 3

    .line 2934
    const-string v0, "scm_version"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSelectTransportAfterTcpReset()Ljava/lang/String;
    .registers 2

    .line 3102
    const-string v0, "select_transport_after_tcp_reset"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfPort()I
    .registers 3

    .line 2930
    const-string v0, "self_port"

    const/16 v1, 0x13c4

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSend18xReliably()Z
    .registers 2

    .line 1897
    const-string v0, "send_18x_reliable"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSendByeForUssi()Z
    .registers 2

    .line 1881
    const-string v0, "send_bye_for_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getServiceSet(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)Ljava/util/Set;
    .registers 4
    .param p1, "network"    # Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1049
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;->ALL:Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;

    if-ne p1, v0, :cond_9

    .line 1050
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1053
    :cond_9
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Lcom/sec/ims/settings/ImsProfile$NETWORK_TYPE;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;
    .registers 3
    .param p1, "network"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1057
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getServiceSet(Ljava/lang/Integer;Z)Ljava/util/Set;
    .registers 8
    .param p1, "network"    # Ljava/lang/Integer;
    .param p2, "ignoreEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1061
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1063
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1065
    .local v1, "n":Lorg/json/JSONObject;
    if-eqz v1, :cond_34

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    if-eqz p2, :cond_34

    .line 1066
    :cond_19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    const-string v3, "services"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_34

    .line 1067
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1066
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1071
    .end local v2    # "i":I
    :cond_34
    return-object v0
.end method

.method public getSessionExpire()I
    .registers 2

    .line 2271
    const-string v0, "session_expires"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSessionRefreshMethod()I
    .registers 2

    .line 2139
    const-string v0, "session_refresh_method"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSessionRefresher()Ljava/lang/String;
    .registers 2

    .line 2922
    const-string v0, "session_refresher"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimMobility()Z
    .registers 2

    .line 885
    const-string v0, "simmobility"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSimMobilityForRcs()Z
    .registers 2

    .line 894
    const-string v0, "simmobilityForRcs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSimMobilityUpdate()Lorg/json/JSONObject;
    .registers 4

    .line 953
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v1, "simmobility_update"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 954
    :catch_9
    move-exception v0

    .line 955
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsProfile"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    .end local v0    # "e":Lorg/json/JSONException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSipMobility()I
    .registers 2

    .line 2135
    const-string v0, "sip_mobility"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSipPort()I
    .registers 2

    .line 1472
    const-string v0, "port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSipUserAgent()Ljava/lang/String;
    .registers 2

    .line 2127
    const-string v0, "useragent"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsPsi()Ljava/lang/String;
    .registers 2

    .line 3030
    const-string v0, "sms_psi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscSet()Ljava/lang/String;
    .registers 2

    .line 2279
    const-string v0, "smsc_set"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsoipUsagePolicy()Ljava/lang/String;
    .registers 2

    .line 3572
    const-string v0, "smsoip_usage_policy"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSosUrnRequired()Z
    .registers 2

    .line 3022
    const-string v0, "sos_urn_required"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSslType()I
    .registers 2

    .line 3074
    const-string v0, "ssl_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSubscribeForReg()I
    .registers 2

    .line 2299
    const-string v0, "subscribe_for_reg"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSubscribeMaxEntry()I
    .registers 2

    .line 2187
    const-string v0, "subscribe_max_entry"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSubscriberTimer()I
    .registers 2

    .line 2295
    const-string v0, "subscriber_timer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSupport183ForIr92v9Precondition()Z
    .registers 2

    .line 3010
    const-string v0, "support_183_for_ir92v9_precondition"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupport199ProvisionalResponse()Z
    .registers 2

    .line 1889
    const-string v0, "support_199_provisional_response"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupport380PolicyByEmcbs()Z
    .registers 2

    .line 3548
    const-string v0, "support_380_policy_by_emcbs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupport3gppUssi()Z
    .registers 2

    .line 1865
    const-string v0, "support_3gpp_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportAccessType()Z
    .registers 2

    .line 3086
    const-string v0, "support_access_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportClir()Z
    .registers 2

    .line 2966
    const-string v0, "support_clir"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportEct()Z
    .registers 2

    .line 2978
    const-string v0, "support_ect"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportImsNotAvailable()Z
    .registers 2

    .line 2990
    const-string v0, "support_ims_not_available"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportLtePreferred()Z
    .registers 2

    .line 2994
    const-string v0, "support_lte_preferred"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportMergeVideoConference()Z
    .registers 2

    .line 2247
    const-string v0, "support_merge_video_conference"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportNetworkInitUssi()Z
    .registers 2

    .line 1873
    const-string v0, "support_network_init_ussi"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportRcsAcrossSalesCode()Z
    .registers 2

    .line 3620
    const-string v0, "support_rcs_across_sales_code"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportReplaceMerge()Z
    .registers 2

    .line 2255
    const-string v0, "support_replace_merge"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportRfc6337ForDelayedOffer()Z
    .registers 2

    .line 3564
    const-string v0, "support_rfc6337_for_delayed_offer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportUpgradeVideoConference()Z
    .registers 2

    .line 2251
    const-string v0, "support_upgrade_video_conference"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getSupportedGeolocationPhase()I
    .registers 2

    .line 1764
    const-string v0, "supported_geolocation_phase"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTcpRstUacErrorcode()I
    .registers 2

    .line 2946
    const-string v0, "tcprst_uac_errorcode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTcpRstUasErrorcode()I
    .registers 2

    .line 2950
    const-string v0, "tcprst_uas_errorcode"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextAS()I
    .registers 2

    .line 2508
    const-string v0, "text_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextAvpf()I
    .registers 2

    .line 2476
    const-string v0, "text_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextPort()I
    .registers 2

    .line 2400
    const-string v0, "text_port"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextRR()I
    .registers 2

    .line 2516
    const-string v0, "text_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextRS()I
    .registers 2

    .line 2512
    const-string v0, "text_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTextSrtp()I
    .registers 2

    .line 2480
    const-string v0, "text_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTimer1()I
    .registers 2

    .line 1921
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimer2()I
    .registers 2

    .line 1929
    const-string v0, "2"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimer4()I
    .registers 2

    .line 1937
    const-string v0, "4"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerA()I
    .registers 2

    .line 1945
    const-string v0, "A"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerB()I
    .registers 2

    .line 1953
    const-string v0, "B"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerC()I
    .registers 2

    .line 1961
    const-string v0, "C"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerD()I
    .registers 2

    .line 1969
    const-string v0, "D"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerE()I
    .registers 2

    .line 1977
    const-string v0, "E"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerF()I
    .registers 2

    .line 1985
    const-string v0, "F"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerG()I
    .registers 2

    .line 1993
    const-string v0, "G"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerH()I
    .registers 2

    .line 2001
    const-string v0, "H"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerI()I
    .registers 2

    .line 2009
    const-string v0, "I"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerJ()I
    .registers 2

    .line 2017
    const-string v0, "J"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimerK()I
    .registers 2

    .line 2025
    const-string v0, "K"

    invoke-direct {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getTimer(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTransport()I
    .registers 3

    .line 1484
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "transport":Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 1486
    const-string v1, "udp-preferred"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1487
    const/4 v1, 0x1

    return v1

    .line 1488
    :cond_12
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1489
    const/4 v1, 0x2

    return v1

    .line 1490
    :cond_1c
    const-string v1, "tcp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1491
    const/4 v1, 0x3

    return v1

    .line 1492
    :cond_26
    const-string v1, "tls"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 1493
    const/4 v1, 0x4

    return v1

    .line 1497
    :cond_30
    const/4 v1, -0x1

    return v1
.end method

.method public getTransportName()Ljava/lang/String;
    .registers 2

    .line 1520
    const-string v0, "transport"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTryReregisterFromKeepalive()Z
    .registers 2

    .line 3147
    const-string v0, "try_reregister_from_keepalive"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTtyType()I
    .registers 5

    .line 1654
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_VoiceCall_SupportRTT"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1655
    .local v0, "isRttSupportByCallApp":Z
    const-string v1, "tty_type"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1656
    .local v1, "ttyType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRttSupportByCallApp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ttyType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsProfile"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    if-eqz v0, :cond_41

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3e

    const/4 v2, 0x2

    if-ne v1, v2, :cond_41

    .line 1658
    :cond_3e
    add-int/lit8 v2, v1, 0x2

    return v2

    .line 1659
    :cond_41
    if-nez v0, :cond_4c

    const/4 v2, 0x3

    if-eq v1, v2, :cond_49

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4c

    .line 1660
    :cond_49
    add-int/lit8 v2, v1, -0x2

    return v2

    .line 1662
    :cond_4c
    return v1
.end method

.method public getUse183OnProgressIncoming()Z
    .registers 2

    .line 3006
    const-string v0, "use_183_on_progress_incoming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUse200offerWhenRemoteNotSupport100rel()Z
    .registers 2

    .line 3588
    const-string v0, "use_200offer_when_remote_not_support_100rel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUsePemHeader()Z
    .registers 2

    .line 2974
    const-string v0, "use_pem_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUsePrecondition()I
    .registers 2

    .line 2303
    const-string v0, "use_precondition"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseProvisionalResponse100rel()Z
    .registers 2

    .line 3002
    const-string v0, "use_provisional_response_100rel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseQ850causeOn480()Z
    .registers 2

    .line 3014
    const-string v0, "use_q850cause_on_480"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseSpsForH264Hd()Z
    .registers 2

    .line 2600
    const-string v0, "use_sps_for_h264_hd"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getUseSubcontactWhenResub()Z
    .registers 2

    .line 2998
    const-string v0, "use_subcontact_when_resub"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getValidLocationAccuracy()I
    .registers 2

    .line 3678
    const-string v0, "valid_location_accuracy"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValidLocationTime()I
    .registers 2

    .line 3651
    const-string v0, "t_valid_location_time"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoAS()I
    .registers 2

    .line 2496
    const-string v0, "video_as"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoAvpf()I
    .registers 2

    .line 2464
    const-string v0, "video_avpf"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoCodec()Ljava/lang/String;
    .registers 2

    .line 2380
    const-string v0, "video_codec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCrbtSupportType()I
    .registers 5

    .line 1631
    const-string v0, "video_crbt_support_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1632
    .local v0, "videoCrbtSupportType":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3b

    .line 1633
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_VoiceCall_SupportCallerRingBackTone"

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1635
    .local v1, "supportCallerRBT":Z
    move v0, v1

    .line 1636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportCallerRBT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", videoCrbtSupportType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsProfile"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    .end local v1    # "supportCallerRBT":Z
    :cond_3b
    return v0
.end method

.method public getVideoPortEnd()I
    .registers 2

    .line 2412
    const-string v0, "video_port_end"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoPortStart()I
    .registers 2

    .line 2392
    const-string v0, "video_port_start"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoRR()I
    .registers 2

    .line 2504
    const-string v0, "video_rr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoRS()I
    .registers 2

    .line 2500
    const-string v0, "video_rs"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoRtcpXr()I
    .registers 2

    .line 2712
    const-string v0, "video_rtcpxr"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVideoSrtp()I
    .registers 2

    .line 2468
    const-string v0, "video_srtp"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public hasEmergencySupport()Z
    .registers 2

    .line 2033
    const-string v0, "emergency_support"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasService(Ljava/lang/String;)Z
    .registers 5
    .param p1, "service"    # Ljava/lang/String;

    .line 1404
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1405
    .local v1, "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1406
    const/4 v0, 0x1

    return v0

    .line 1408
    .end local v1    # "s":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_20
    goto :goto_c

    .line 1410
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public hasService(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "service"    # Ljava/lang/String;
    .param p2, "network"    # I

    .line 1415
    const/4 v0, -0x1

    if-eq p2, v0, :cond_25

    if-nez p2, :cond_6

    goto :goto_25

    .line 1418
    :cond_6
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSet()Ljava/util/Map;

    move-result-object v0

    .line 1419
    .local v0, "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1420
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1423
    :cond_23
    const/4 v1, 0x0

    return v1

    .line 1416
    .end local v0    # "serviceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_25
    :goto_25
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 3196
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3197
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v1, v2

    .line 3198
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isAllowedOnRoaming()Z
    .registers 2

    .line 1671
    const-string v0, "support_roaming"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAnonymousFetch()Z
    .registers 2

    .line 2171
    const-string v0, "anonymous_fetch"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableGruu()Z
    .registers 2

    .line 2668
    const-string v0, "enable_gruu"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableSessionId()Z
    .registers 2

    .line 2696
    const-string v0, "enable_session_id"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isEnableVcid()Z
    .registers 5

    .line 2672
    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    .line 2673
    return v2

    .line 2676
    :cond_12
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2677
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2678
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2680
    :cond_24
    const-string v1, "SKT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "SKC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 2681
    const-string v1, "KTT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "KTC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 2682
    const-string v1, "LGT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "LUC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 2683
    const-string v1, "KOO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_65

    const-string v1, "K0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 2684
    return v2

    .line 2687
    :cond_65
    const-string v1, "ro.build.version.oneui"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v3, 0xc3b4

    if-ge v1, v3, :cond_7e

    .line 2688
    const-string v1, "enable_vcid_aux"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7d

    goto :goto_7e

    .line 2692
    :cond_7d
    return v2

    .line 2689
    :cond_7e
    :goto_7e
    const-string v1, "enable_vcid"

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public isEpdgSupported()Z
    .registers 3

    .line 2109
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2110
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 2109
    :goto_1f
    return v0
.end method

.method public isGzipEnabled()Z
    .registers 2

    .line 2151
    const-string v0, "enable_gzip"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isIpSecEnabled()Z
    .registers 2

    .line 1567
    const-string v0, "support_ipsec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isMmtelVideoExempt()Z
    .registers 3

    .line 1595
    const-string v0, "mmtel_video_exempt"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isMmtelVoiceExempt()Z
    .registers 3

    .line 1591
    const-string v0, "mmtel_voice_exempt"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isMsrpBearerUsed()Z
    .registers 2

    .line 1905
    const-string v0, "use_msrp_bearer"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isNetworkEnabled(I)Z
    .registers 4
    .param p1, "network"    # I

    .line 1427
    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1428
    .local v0, "n":Lorg/json/JSONObject;
    if-eqz v0, :cond_10

    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public isProper()Z
    .registers 2

    .line 2114
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2115
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 2114
    :goto_21
    return v0
.end method

.method public isPublishGzipEnabled()Z
    .registers 2

    .line 2155
    const-string v0, "enable_gzip_for_publish"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isRegEnabled()Z
    .registers 2

    .line 2057
    const-string v0, "reg_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSamsungMdmnEnabled()Z
    .registers 3

    .line 1583
    const-string v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSipUriOnly()Z
    .registers 2

    .line 2660
    const-string v0, "sip_uri_only"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSmsIpExempt()Z
    .registers 3

    .line 1599
    const-string v0, "smsoip_exempt"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public isSoftphoneEnabled()Z
    .registers 3

    .line 1587
    const-string v0, "mdmn_type"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Softphone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSupportSmsOverIms()Z
    .registers 2

    .line 3058
    const-string v0, "support_sms_over_ims"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isSupportVideoCapabilities()Z
    .registers 2

    .line 2636
    const-string v0, "video_capabilities"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isTcpGracefulShutdownEnabled()Z
    .registers 2

    .line 2938
    const-string v0, "enable_tcp_graceful_shutdown"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isUicclessEmergency()Z
    .registers 2

    .line 2041
    const-string v0, "uiccless_emergency"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVceConfigEnabled()Z
    .registers 2

    .line 1646
    const-string v0, "vce_config_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isVolteServiceStatus()Z
    .registers 2

    .line 3066
    const-string v0, "volte_service_status"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWifiPreConditionEnabled()Z
    .registers 2

    .line 1571
    const-string v0, "wifi_precondition_enabled"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1153
    goto :goto_a

    .line 1151
    :catch_6
    move-exception v0

    .line 1152
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1154
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .line 1166
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1169
    goto :goto_a

    .line 1167
    :catch_6
    move-exception v0

    .line 1168
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1170
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1158
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    .line 1161
    goto :goto_a

    .line 1159
    :catch_6
    move-exception v0

    .line 1160
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1162
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_a
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1174
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1175
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_15

    .line 1176
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1a

    .line 1178
    :cond_15
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 1182
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_1a
    goto :goto_1f

    .line 1180
    :catch_1b
    move-exception v0

    .line 1181
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1183
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1f
    return-void
.end method

.method public removeImpu(Ljava/lang/String;)V
    .registers 4
    .param p1, "impu"    # Ljava/lang/String;

    .line 1312
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1313
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1314
    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 1315
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "accessToken"    # Ljava/lang/String;

    .line 2452
    const-string v0, "accessToken"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2453
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 3
    .param p1, "appId"    # Ljava/lang/String;

    .line 2097
    const-string v0, "app_id"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    return-void
.end method

.method public setAudioPortEnd(I)V
    .registers 4
    .param p1, "port"    # I

    .line 2408
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "audio_port_end"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2409
    return-void
.end method

.method public setAudioPortStart(I)V
    .registers 4
    .param p1, "port"    # I

    .line 2388
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "audio_port_start"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2389
    return-void
.end method

.method public setAudioSrtp(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 2436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "audio_srtp"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2437
    return-void
.end method

.method public setAuthAlgorithm(Ljava/lang/String;)V
    .registers 3
    .param p1, "auth"    # Ljava/lang/String;

    .line 1727
    const-string v0, "auth_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    return-void
.end method

.method public setAuthName(Ljava/lang/String;)V
    .registers 3
    .param p1, "authName"    # Ljava/lang/String;

    .line 1444
    const-string v0, "authname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method public setConferenceSupportPrematureEnd(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "conference_support_premature_end"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2244
    return-void
.end method

.method public setDelayPcscfChangeDuringCall(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3632
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "delay_pcscf_change_during_call"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3633
    return-void
.end method

.method public setDeregTimeout(Ljava/lang/String;I)V
    .registers 5
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .line 2082
    invoke-virtual {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 2084
    .local v0, "n":Lorg/json/JSONObject;
    if-eqz v0, :cond_11

    .line 2085
    :try_start_6
    const-string v1, "dereg_timeout"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_b} :catch_c

    goto :goto_11

    .line 2087
    :catch_c
    move-exception v1

    .line 2088
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 2089
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_11
    :goto_11
    nop

    .line 2090
    :goto_12
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 3
    .param p1, "displayName"    # Ljava/lang/String;

    .line 2105
    const-string v0, "display_name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .registers 3
    .param p1, "domain"    # Ljava/lang/String;

    .line 1322
    const-string v0, "domain"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    return-void
.end method

.method public setDuid(Ljava/lang/String;)V
    .registers 3
    .param p1, "duid"    # Ljava/lang/String;

    .line 2444
    const-string v0, "duid"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    return-void
.end method

.method public setEctNoHoldForActiveCall(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3584
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "ect_no_hold_for_active_call"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3585
    return-void
.end method

.method public setEmergencySupport(Z)V
    .registers 4
    .param p1, "isEmergencySupport"    # Z

    .line 2037
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "emergency_support"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2038
    return-void
.end method

.method public setEnableEvsCodec(Z)V
    .registers 4
    .param p1, "enableEVSCodec"    # Z

    .line 2734
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_evs_codec"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2735
    return-void
.end method

.method public setEnableScr(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1861
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_scr"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1862
    return-void
.end method

.method public setEnableVerstat(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3143
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_verstat"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3144
    return-void
.end method

.method public setEncAlgorithm(Ljava/lang/String;)V
    .registers 3
    .param p1, "enc"    # Ljava/lang/String;

    .line 1719
    const-string v0, "enc_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    return-void
.end method

.method public setEvs2ndPayload(I)V
    .registers 4
    .param p1, "payload"    # I

    .line 2846
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "evs_2nd_payload"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2847
    return-void
.end method

.method public setEvsBandwidthReceive(Ljava/lang/String;)V
    .registers 3
    .param p1, "bandwidthReceive"    # Ljava/lang/String;

    .line 2830
    const-string v0, "evs_bandwidth_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2831
    return-void
.end method

.method public setEvsBandwidthReceiveExt(Ljava/lang/String;)V
    .registers 3
    .param p1, "bandwidthReceive"    # Ljava/lang/String;

    .line 2902
    const-string v0, "evs_bandwidth_receive_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    return-void
.end method

.method public setEvsBandwidthSend(Ljava/lang/String;)V
    .registers 3
    .param p1, "bandwidthSend"    # Ljava/lang/String;

    .line 2822
    const-string v0, "evs_bandwidth_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2823
    return-void
.end method

.method public setEvsBandwidthSendExt(Ljava/lang/String;)V
    .registers 3
    .param p1, "bandwidthSend"    # Ljava/lang/String;

    .line 2894
    const-string v0, "evs_bandwidth_send_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    return-void
.end method

.method public setEvsBitRateReceive(Ljava/lang/String;)V
    .registers 3
    .param p1, "bitRateReceive"    # Ljava/lang/String;

    .line 2814
    const-string v0, "evs_bit_rate_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2815
    return-void
.end method

.method public setEvsBitRateReceiveExt(Ljava/lang/String;)V
    .registers 3
    .param p1, "bitRateReceive"    # Ljava/lang/String;

    .line 2886
    const-string v0, "evs_bit_rate_receive_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    return-void
.end method

.method public setEvsBitRateSend(Ljava/lang/String;)V
    .registers 3
    .param p1, "bitRateSend"    # Ljava/lang/String;

    .line 2806
    const-string v0, "evs_bit_rate_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    return-void
.end method

.method public setEvsBitRateSendExt(Ljava/lang/String;)V
    .registers 3
    .param p1, "bitRateSend"    # Ljava/lang/String;

    .line 2878
    const-string v0, "evs_bit_rate_send_ext"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    return-void
.end method

.method public setEvsChannelAwareReceive(Ljava/lang/String;)V
    .registers 3
    .param p1, "channelAwareReceive"    # Ljava/lang/String;

    .line 2790
    const-string v0, "evs_channel_aware_receive"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2791
    return-void
.end method

.method public setEvsChannelRecv(Ljava/lang/String;)V
    .registers 3
    .param p1, "channelRecv"    # Ljava/lang/String;

    .line 2782
    const-string v0, "evs_channel_recv"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    return-void
.end method

.method public setEvsChannelSend(Ljava/lang/String;)V
    .registers 3
    .param p1, "channelSend"    # Ljava/lang/String;

    .line 2774
    const-string v0, "evs_channel_send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    return-void
.end method

.method public setEvsCodecModeRequest(Ljava/lang/String;)V
    .registers 3
    .param p1, "codecModeRequest"    # Ljava/lang/String;

    .line 2798
    const-string v0, "evs_codec_mode_request"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    return-void
.end method

.method public setEvsDefaultBandwidth(Ljava/lang/String;)V
    .registers 3
    .param p1, "defaultBandwidth"    # Ljava/lang/String;

    .line 2854
    const-string v0, "evs_default_bandwidth"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    return-void
.end method

.method public setEvsDefaultBitrate(Ljava/lang/String;)V
    .registers 3
    .param p1, "defaultBitrate"    # Ljava/lang/String;

    .line 2862
    const-string v0, "evs_default_bitrate"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2863
    return-void
.end method

.method public setEvsDiscontinuousTransmission(Ljava/lang/String;)V
    .registers 3
    .param p1, "discontinuousTransmission"    # Ljava/lang/String;

    .line 2742
    const-string v0, "evs_discontinuous_transmission"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    return-void
.end method

.method public setEvsDtxRecv(Ljava/lang/String;)V
    .registers 3
    .param p1, "dtxRecv"    # Ljava/lang/String;

    .line 2750
    const-string v0, "evs_dtx_recv"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2751
    return-void
.end method

.method public setEvsHeaderFull(Ljava/lang/String;)V
    .registers 3
    .param p1, "headerFull"    # Ljava/lang/String;

    .line 2758
    const-string v0, "evs_header_full"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    return-void
.end method

.method public setEvsLimitedCodec(Ljava/lang/String;)V
    .registers 3
    .param p1, "evsLimitedCodec"    # Ljava/lang/String;

    .line 2918
    const-string v0, "evs_limited_codec"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2919
    return-void
.end method

.method public setEvsModeSwitch(Ljava/lang/String;)V
    .registers 3
    .param p1, "modeSwitch"    # Ljava/lang/String;

    .line 2766
    const-string v0, "evs_mode_switch"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    return-void
.end method

.method public setEvsPayload(I)V
    .registers 4
    .param p1, "payload"    # I

    .line 2838
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "evs_payload"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2839
    return-void
.end method

.method public setEvsPayloadExt(I)V
    .registers 4
    .param p1, "payload"    # I

    .line 2870
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "evs_payload_ext"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2871
    return-void
.end method

.method public setEvsUseDefaultRtcpBw(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2914
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "evs_use_default_rtcp_bw"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2915
    return-void
.end method

.method public setExcludePaniVowifiInitialRegi(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3600
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "exclude_pani_vowifi_initial_regi"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3601
    return-void
.end method

.method public setExtImpuList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1297
    .local p1, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "ext_impu"

    if-nez p1, :cond_11

    .line 1298
    const-string v1, "ImsProfile"

    const-string v2, "setExtImpuList: impuList is null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    .line 1301
    :cond_11
    const-string v1, ","

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    :goto_1a
    return-void
.end method

.method public setId(I)V
    .registers 4
    .param p1, "id"    # I

    .line 1001
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1002
    return-void
.end method

.method public setImpi(Ljava/lang/String;)V
    .registers 3
    .param p1, "impi"    # Ljava/lang/String;

    .line 1280
    const-string v0, "impi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    return-void
.end method

.method public setImpuList(Ljava/lang/String;)V
    .registers 3
    .param p1, "impu"    # Ljava/lang/String;

    .line 1288
    const-string v0, "impu"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    return-void
.end method

.method public setIpSpecEnabled(Z)V
    .registers 4
    .param p1, "isIpSecEnabled"    # Z

    .line 1667
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_ipsec"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1668
    return-void
.end method

.method public setIpVer(I)V
    .registers 4
    .param p1, "ipVer"    # I

    .line 1539
    const-string v0, "ipver"

    packed-switch p1, :pswitch_data_20

    .line 1550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong ipVer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1547
    :pswitch_d
    const-string v1, "ipv4v6"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    goto :goto_1f

    .line 1544
    :pswitch_13
    const-string v1, "ipv6"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    goto :goto_1f

    .line 1541
    :pswitch_19
    const-string v1, "ipv4"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    nop

    .line 1552
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public setIsSipUriOnly(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2664
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sip_uri_only"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2665
    return-void
.end method

.method public setLboPcscfAddressList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3046
    .local p1, "pcscf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lbo_pcscf_address"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3047
    return-void
.end method

.method public setLboPcscfPort(I)V
    .registers 4
    .param p1, "port"    # I

    .line 3054
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lbo_pcscf_port"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3055
    return-void
.end method

.method public setMcc(Ljava/lang/String;)V
    .registers 3
    .param p1, "mcc"    # Ljava/lang/String;

    .line 1103
    const-string v0, "mcc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    return-void
.end method

.method public setMediaTypeRestrictionPolicy(Ljava/lang/String;)V
    .registers 3
    .param p1, "mnop"    # Ljava/lang/String;

    .line 3560
    const-string v0, "media_type_restriction_policy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3561
    return-void
.end method

.method public setMnc(Ljava/lang/String;)V
    .registers 3
    .param p1, "mnc"    # Ljava/lang/String;

    .line 1119
    const-string v0, "mnc"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public setMnoName(Ljava/lang/String;)V
    .registers 3
    .param p1, "mnoName"    # Ljava/lang/String;

    .line 1087
    const-string v0, "mnoname"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public setMsrpBearerUsed(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1909
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "use_msrp_bearer"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1910
    return-void
.end method

.method public setMssSize(I)V
    .registers 4
    .param p1, "mssSize"    # I

    .line 2069
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mss_size"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2070
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1079
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    return-void
.end method

.method public setNeedAutoconfig(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1849
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "need_autoconfig"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1850
    return-void
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3616
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "need_check_allowed_method_for_refresh"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3617
    return-void
.end method

.method public setNeedNaptrDns(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1841
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "need_naptr_dns"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1842
    return-void
.end method

.method public setNeedOmadmConfig(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1857
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "need_omadm_config"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1858
    return-void
.end method

.method public setNeedPidfRat(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1826
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 1827
    const-string p1, ""

    .line 1829
    :cond_9
    const-string v0, "need_pidf_rat"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    return-void
.end method

.method public setNeedPidfSipMsg(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 1798
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 1799
    const-string p1, ""

    .line 1801
    :cond_9
    const-string v0, "need_pidf_sip_msg"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1802
    return-void
.end method

.method public setNetworkEnabled(IZ)V
    .registers 6
    .param p1, "network"    # I
    .param p2, "enabled"    # Z

    .line 1013
    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1015
    .local v0, "n":Lorg/json/JSONObject;
    if-nez v0, :cond_2c

    .line 1016
    :try_start_6
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1017
    const-string v1, "type"

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1018
    const-string v1, "services"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1020
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1021
    .local v1, "networkArray":Lorg/json/JSONArray;
    if-eqz v1, :cond_2c

    .line 1022
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1025
    .end local v1    # "networkArray":Lorg/json/JSONArray;
    :cond_2c
    const-string v1, "enabled"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_31
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_31} :catch_32

    .line 1028
    goto :goto_36

    .line 1026
    :catch_32
    move-exception v1

    .line 1027
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1029
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_36
    return-void
.end method

.method public setNetworkEnabled(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "network"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .line 1033
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkType(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    .line 1034
    return-void
.end method

.method public setNetworkList(Ljava/lang/String;)V
    .registers 11
    .param p1, "networkList"    # Ljava/lang/String;

    .line 1245
    const-string v0, "\\s*,\\s*"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1246
    .local v0, "newNetStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1248
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_59

    .line 1249
    const-string v2, ","

    invoke-static {p1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1c
    const-string v5, "type"

    if-ge v4, v3, :cond_3b

    aget-object v6, v2, v4

    .line 1250
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 1251
    .local v7, "n":Lorg/json/JSONObject;
    if-nez v7, :cond_38

    .line 1252
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 1254
    .local v8, "obj":Lorg/json/JSONObject;
    :try_start_2d
    invoke-virtual {v8, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_30} :catch_31

    .line 1257
    goto :goto_35

    .line 1255
    :catch_31
    move-exception v5

    .line 1256
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 1258
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_35
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1249
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "n":Lorg/json/JSONObject;
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1262
    :cond_3b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 1263
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1264
    .local v3, "type":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_56

    .line 1265
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    move v2, v4

    .line 1262
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "i":I
    .restart local v2    # "i":I
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 1269
    .end local v2    # "i":I
    :cond_59
    return-void
.end method

.method public setNotifyCallDowngraded(I)V
    .registers 4
    .param p1, "value"    # I

    .line 3608
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "notify_call_downgraded"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3609
    return-void
.end method

.method public setNotifyCodecOnEstablished(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2351
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "notify_codec_on_established"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2352
    return-void
.end method

.method public setNotifyHistoryInfo(Ljava/lang/String;)V
    .registers 3
    .param p1, "notifyHistoryInfo"    # Ljava/lang/String;

    .line 1917
    const-string v0, "notify_history_info"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    return-void
.end method

.method public setOipFromPreferred(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3094
    const-string v0, "oip_from_preferred"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 3
    .param p1, "password"    # Ljava/lang/String;

    .line 1452
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    return-void
.end method

.method public setPcscfList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1460
    .local p1, "pcscfList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ","

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pcscf"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method public setPcscfPreference(I)V
    .registers 4
    .param p1, "pcscfPreference"    # I

    .line 1468
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "pcscf_pref"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1469
    return-void
.end method

.method public setPdn(Ljava/lang/String;)V
    .registers 3
    .param p1, "pdn"    # Ljava/lang/String;

    .line 1330
    const-string v0, "pdn"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1331
    return-void
.end method

.method public setPolicyOnLocalNumbers(Ljava/lang/String;)V
    .registers 3
    .param p1, "val"    # Ljava/lang/String;

    .line 3155
    const-string v0, "policy_on_local_numbers"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3156
    return-void
.end method

.method public setPriDeviceIdWithURN(Ljava/lang/String;)V
    .registers 3
    .param p1, "priDeviceIdWithURN"    # Ljava/lang/String;

    .line 2460
    const-string v0, "priDeviceIdWithURN"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2461
    return-void
.end method

.method public setPriority(I)V
    .registers 4
    .param p1, "priority"    # I

    .line 1436
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "priority"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1437
    return-void
.end method

.method public setRPort(I)V
    .registers 4
    .param p1, "rport"    # I

    .line 2053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rport"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2054
    return-void
.end method

.method public setRcsProfile(Ljava/lang/String;)V
    .registers 3
    .param p1, "rcsProfile"    # Ljava/lang/String;

    .line 1695
    const-string v0, "rcs_profile"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    return-void
.end method

.method public setRegEnabled(Z)V
    .registers 4
    .param p1, "isRegEnabled"    # Z

    .line 2061
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "reg_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2062
    return-void
.end method

.method public setRegistrationAlgorithm(Ljava/lang/String;)V
    .registers 3
    .param p1, "registrationAlgorithm"    # Ljava/lang/String;

    .line 1563
    const-string v0, "regi_algo"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    return-void
.end method

.method public setRequestLocationTiming(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3675
    const-string v0, "request_location_timing"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    return-void
.end method

.method public setReregiOnRatChange(I)V
    .registers 4
    .param p1, "value"    # I

    .line 1746
    const-string v0, "reregi_on_ratchange"

    packed-switch p1, :pswitch_data_18

    .line 1754
    :pswitch_5
    const-string v1, "off"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .line 1751
    :pswitch_b
    const-string v1, "on"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    goto :goto_17

    .line 1748
    :pswitch_11
    const-string v1, "off_rat_change"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    nop

    .line 1757
    :goto_17
    return-void

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11
        :pswitch_5
        :pswitch_b
    .end packed-switch
.end method

.method public setSaClientPort(I)V
    .registers 4
    .param p1, "saClientPort"    # I

    .line 1703
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "secure_client_port"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1704
    return-void
.end method

.method public setSaServerPort(I)V
    .registers 4
    .param p1, "saServerPort"    # I

    .line 1711
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "secure_server_port"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1712
    return-void
.end method

.method public setSend18xReliably(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1901
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "send_18x_reliable"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1902
    return-void
.end method

.method public setSendByeForUssi(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1885
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "send_bye_for_ussi"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1886
    return-void
.end method

.method public setServiceSet(ILjava/util/Set;)V
    .registers 6
    .param p1, "network"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1228
    .local p2, "serviceSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/sec/ims/settings/ImsProfile;->getNetwork(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1229
    .local v0, "n":Lorg/json/JSONObject;
    if-eqz v0, :cond_16

    .line 1231
    :try_start_6
    const-string v1, "services"

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_10} :catch_11

    goto :goto_15

    .line 1232
    :catch_11
    move-exception v1

    .line 1233
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1234
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_15
    goto :goto_1d

    .line 1236
    :cond_16
    const-string v1, "ImsProfile"

    const-string v2, "setServiceSet: getNetwork return null."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :goto_1d
    return-void
.end method

.method public setSimMobility(Z)V
    .registers 4
    .param p1, "simMobility"    # Z

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimMobility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "simmobility"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 891
    return-void
.end method

.method public setSimMobilityForRcs(Z)V
    .registers 4
    .param p1, "simMobilityForRcs"    # Z

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimMobilityForRcs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "simmobilityForRcs"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 900
    return-void
.end method

.method public setSipPort(I)V
    .registers 4
    .param p1, "sipPort"    # I

    .line 1476
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "port"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1477
    return-void
.end method

.method public setSipUserAgent(Ljava/lang/String;)V
    .registers 3
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 2131
    const-string v0, "useragent"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    return-void
.end method

.method public setSmsPsi(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 3034
    const-string v0, "sms_psi"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3035
    return-void
.end method

.method public setSmsoipUsagePolicy(Ljava/lang/String;)V
    .registers 3
    .param p1, "mnop"    # Ljava/lang/String;

    .line 3576
    const-string v0, "smsoip_usage_policy"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    return-void
.end method

.method public setSoftphoneEnabled(Ljava/lang/String;)V
    .registers 4
    .param p1, "mdmnType"    # Ljava/lang/String;

    .line 1642
    const-string v0, "mdmn_type"

    const-string v1, "Softphone"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    return-void
.end method

.method public setSosUrnRequired(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3026
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sos_urn_required"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3027
    return-void
.end method

.method public setSslType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 3078
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ssl_type"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3079
    return-void
.end method

.method public setSupport199ProvisionalResponse(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1893
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_199_provisional_response"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1894
    return-void
.end method

.method public setSupport380PolicyByEmcbs(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3552
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_380_policy_by_emcbs"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3553
    return-void
.end method

.method public setSupport3gppUssi(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1869
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_3gpp_ussi"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1870
    return-void
.end method

.method public setSupportClir(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2970
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_clir"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2971
    return-void
.end method

.method public setSupportNetworkInitUssi(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 1877
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_network_init_ussi"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1878
    return-void
.end method

.method public setSupportRcsAcrossSalesCode(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3624
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_rcs_across_sales_code"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3625
    return-void
.end method

.method public setSupportRfc6337ForDelayedOffer(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3568
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_rfc6337_for_delayed_offer"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3569
    return-void
.end method

.method public setSupportSmsOverIms(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3062
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "support_sms_over_ims"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3063
    return-void
.end method

.method public setSupportedGeolocationPhase(I)V
    .registers 4
    .param p1, "value"    # I

    .line 1768
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "supported_geolocation_phase"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1769
    return-void
.end method

.method public setTcpGracefulShutdownEnabled(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 2942
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_tcp_graceful_shutdown"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2943
    return-void
.end method

.method public setTimer(Ljava/lang/String;I)V
    .registers 9
    .param p1, "timer"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 3106
    invoke-direct {p0}, Lcom/sec/ims/settings/ImsProfile;->getTimerMap()Ljava/util/Map;

    move-result-object v0

    .line 3107
    .local v0, "timerMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3109
    .local v1, "timerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3110
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3111
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_18

    .line 3113
    :cond_49
    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timer"

    invoke-virtual {p0, v3, v2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3114
    return-void
.end method

.method public setTimer1(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1925
    const-string v0, "1"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1926
    return-void
.end method

.method public setTimer2(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1933
    const-string v0, "2"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1934
    return-void
.end method

.method public setTimer4(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1941
    const-string v0, "4"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1942
    return-void
.end method

.method public setTimerA(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1949
    const-string v0, "A"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1950
    return-void
.end method

.method public setTimerB(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1957
    const-string v0, "B"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1958
    return-void
.end method

.method public setTimerC(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1965
    const-string v0, "C"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1966
    return-void
.end method

.method public setTimerD(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1973
    const-string v0, "D"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1974
    return-void
.end method

.method public setTimerE(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1981
    const-string v0, "E"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1982
    return-void
.end method

.method public setTimerF(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1989
    const-string v0, "F"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1990
    return-void
.end method

.method public setTimerG(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 1997
    const-string v0, "G"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 1998
    return-void
.end method

.method public setTimerH(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 2005
    const-string v0, "H"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 2006
    return-void
.end method

.method public setTimerI(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 2013
    const-string v0, "I"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 2014
    return-void
.end method

.method public setTimerJ(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 2021
    const-string v0, "J"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 2022
    return-void
.end method

.method public setTimerK(I)V
    .registers 3
    .param p1, "timer"    # I

    .line 2029
    const-string v0, "K"

    invoke-virtual {p0, v0, p1}, Lcom/sec/ims/settings/ImsProfile;->setTimer(Ljava/lang/String;I)V

    .line 2030
    return-void
.end method

.method public setTransport(I)V
    .registers 4
    .param p1, "transport"    # I

    .line 1501
    const-string v0, "transport"

    packed-switch p1, :pswitch_data_26

    .line 1515
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "wrong transport type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :pswitch_d
    const-string v1, "tls"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    goto :goto_25

    .line 1509
    :pswitch_13
    const-string v1, "tcp"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    goto :goto_25

    .line 1506
    :pswitch_19
    const-string v1, "udp"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    goto :goto_25

    .line 1503
    :pswitch_1f
    const-string v1, "udp-preferred"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    nop

    .line 1517
    :goto_25
    return-void

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_19
        :pswitch_13
        :pswitch_d
    .end packed-switch
.end method

.method public setUicclessEmergency(Z)V
    .registers 4
    .param p1, "uiccless"    # Z

    .line 2045
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "uiccless_emergency"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2046
    return-void
.end method

.method public setUse200offerWhenRemoteNotSupport100rel(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3592
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "use_200offer_when_remote_not_support_100rel"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3593
    return-void
.end method

.method public setUseQ850causeOn480(Z)V
    .registers 4
    .param p1, "value"    # Z

    .line 3018
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "use_q850cause_on_480"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3019
    return-void
.end method

.method public setVceConfigEnabled(Z)V
    .registers 4
    .param p1, "config"    # Z

    .line 1650
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "vce_config_enabled"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1651
    return-void
.end method

.method public setVideoPortEnd(I)V
    .registers 4
    .param p1, "port"    # I

    .line 2416
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "video_port_end"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2417
    return-void
.end method

.method public setVideoPortStart(I)V
    .registers 4
    .param p1, "port"    # I

    .line 2396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "video_port_start"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2397
    return-void
.end method

.method public setVideoSrtp(I)V
    .registers 4
    .param p1, "enable"    # I

    .line 2472
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "video_srtp"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2473
    return-void
.end method

.method public shouldUseCompactHeader()Z
    .registers 2

    .line 1575
    const-string v0, "sip_compact_header"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected splitNetwork()V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 930
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 931
    .local v0, "newNetwork":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    const-string v2, "network"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 932
    .local v1, "network":Lorg/json/JSONArray;
    if-eqz v1, :cond_4c

    .line 933
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 934
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 935
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 936
    .local v6, "types":Ljava/lang/String;
    const-string v7, ","

    invoke-static {v6, v7}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    :goto_28
    if-ge v9, v8, :cond_44

    aget-object v10, v7, v9

    .line 937
    .local v10, "s":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    const-string v12, "services"

    const-string v13, "enabled"

    const-string v14, "dereg_timeout"

    filled-new-array {v12, v13, v14}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v12}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 939
    .local v11, "tmp":Lorg/json/JSONObject;
    invoke-virtual {v11, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 940
    invoke-virtual {v0, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 936
    .end local v10    # "s":Ljava/lang/String;
    .end local v11    # "tmp":Lorg/json/JSONObject;
    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    .line 933
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "types":Ljava/lang/String;
    :cond_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 943
    .end local v3    # "i":I
    :cond_47
    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 945
    :cond_4c
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .registers 2

    .line 979
    iget-object v0, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 3176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pdn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", transport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3177
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getTransportName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roaming : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->isAllowedOnRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scmversion : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3178
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getScmVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selfport : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSelfPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emergency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3179
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hashAlgoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getHashAlgoType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3176
    return-object v0
.end method

.method public update(Landroid/content/ContentValues;)V
    .registers 7
    .param p1, "cv"    # Landroid/content/ContentValues;

    .line 904
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 905
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_36

    .line 907
    const-string v3, "\\[\\{.*\\}\\]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 908
    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_36

    .line 910
    :cond_2d
    iget-object v3, p0, Lcom/sec/ims/settings/ImsProfile;->mBody:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_36} :catch_38

    .line 913
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_36
    :goto_36
    goto :goto_8

    .line 916
    :cond_37
    goto :goto_3c

    .line 914
    :catch_38
    move-exception v0

    .line 915
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 917
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_3c
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 3167
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3168
    return-void
.end method

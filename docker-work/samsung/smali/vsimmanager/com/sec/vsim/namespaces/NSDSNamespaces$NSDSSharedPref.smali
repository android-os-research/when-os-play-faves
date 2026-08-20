.class public final Lcom/sec/vsim/namespaces/NSDSNamespaces$NSDSSharedPref;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSSharedPref"
.end annotation


# static fields
.field public static final NAME_SHARED_PREF:Ljava/lang/String; = "ericsson.nsds"

.field public static final NAME_SHARED_PREF_ENTITLEMENT_SERFVER:Ljava/lang/String; = "entitlmennt_url.xml"

.field public static final PREF_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final PREF_ACCESS_TOKEN_EXPIRY:Ljava/lang/String; = "access_token_expiry"

.field public static final PREF_ACCESS_TOKEN_TYPE:Ljava/lang/String; = "access_token_type"

.field public static final PREF_AKA_TOKEN:Ljava/lang/String; = "aka_token"

.field public static final PREF_DEVICE_CONFIG_RETRIEVAL:Ljava/lang/String; = "device_config_retrieval"

.field public static final PREF_DEVICE_ID:Ljava/lang/String; = "device_id"

.field public static final PREF_DEVICE_STATE:Ljava/lang/String; = "device_state"

.field public static final PREF_ENTITLEMENT_COMPLETED:Ljava/lang/String; = "entitlement_completed"

.field public static final PREF_ENTITLEMENT_SERVER_URL:Ljava/lang/String; = "entitlement_server_url"

.field public static final PREF_ENTITLEMENT_STATE:Ljava/lang/String; = "entitlement_state"

.field public static final PREF_GCM_SENDER_ID:Ljava/lang/String; = "gcm_sender_id"

.field public static final PREF_IMSI:Ljava/lang/String; = "imsi"

.field public static final PREF_IMSI_EAP:Ljava/lang/String; = "imsi_eap"

.field public static final PREF_LAST_NSDS_SERVICE_STATUS:Ljava/lang/String; = "last_nsds_service_status"

.field public static final PREF_OAUTH_MODE_ACTIVATION:Ljava/lang/String; = "oauth_mode_activation"

.field public static final PREF_PEDNING_SIM_SWAP:Ljava/lang/String; = "pending_sim_swap"

.field public static final PREF_PREV_IMSI:Ljava/lang/String; = "prev_imsi"

.field public static final PREF_PUSH_TOKEN:Ljava/lang/String; = "push_token"

.field public static final PREF_REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"

.field public static final PREF_SENT_TOKEN_TO_SERVER:Ljava/lang/String; = "sent_token_to_server"

.field public static final PREF_SVC_PROV_STATE:Ljava/lang/String; = "service_provision_state"

.field public static final PREF_TIMESTAMP:Ljava/lang/String; = "timeStamp"

.field public static final PREF_WSG_AKA_TOKEN:Ljava/lang/String; = "wsg_aka_token"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

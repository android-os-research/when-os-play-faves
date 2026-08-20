.class public Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;
.super Ljava/lang/Object;
.source "DeviceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JanskyConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;,
        Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;
    }
.end annotation


# instance fields
.field public mClientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMOAuthClientIDNSDS"
    .end annotation
.end field

.field public mCnsMw:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$CnsMw;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CNSMW"
    .end annotation
.end field

.field public mEntitlemenServerRedirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entitlement_server_redirect_URI"
    .end annotation
.end field

.field public mEntitlemenServerTokenUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entitlement_server_token_URI"
    .end annotation
.end field

.field public mEntitlementServerUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entitlement_server_FQDN"
    .end annotation
.end field

.field public mGcmSenderId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "GCM_Sender_ID"
    .end annotation
.end field

.field public mGetTRNTimeout:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$GetTRNTimeout;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "getTRNTimeout"
    .end annotation
.end field

.field public mIAMConsumerProfileURI:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMConsumerProfileURI"
    .end annotation
.end field

.field public mIAMOAuthRequired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMOAuthRequired"
    .end annotation
.end field

.field public mIAMOauthClientIdNsdsScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMOAuthClientIDNSDSScope"
    .end annotation
.end field

.field public mIAMOauthClientIdServiceScope:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMOAuthClientIDServiceScope"
    .end annotation
.end field

.field public mIAMRedirectSignUpURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMRedirectSignUpURL"
    .end annotation
.end field

.field public mIAMRedirectURL:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMRedirectURL"
    .end annotation
.end field

.field public mJanksyText:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig$JanskyText;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "JanskyText"
    .end annotation
.end field

.field public mJanskyService:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jansky_service"
    .end annotation
.end field

.field public mMstoreUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mStore_FQDN"
    .end annotation
.end field

.field public mOAuthClientIdService:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IAMOAuthClientIDService"
    .end annotation
.end field

.field public mUsePhone20whileRoamingDomestic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usePhone20whileRoamingDomestic"
    .end annotation
.end field

.field public mUsePhone20whileRoamingInternational:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "usePhone20whileRoamingInternational"
    .end annotation
.end field

.field public mWsgUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "WSG_URI"
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;


# direct methods
.method public constructor <init>(Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    .line 11
    iput-object p1, p0, Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration$JanskyConfig;->this$0:Lcom/sec/vsim/ericssonnsds/data/DeviceConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/sec/vsim/ericssonnsds/data/SampleDeviceConfiguration;
.super Ljava/lang/Object;
.source "SampleDeviceConfiguration.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSampleConfigXml()Ljava/lang/String;
    .registers 1

    .line 9
    const-string v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><DeviceConfiguration>    <configInfo>        <version>1.3</version>        <mustUseFirstTime>true</mustUseFirstTime>        <mustUseForUpdate>false</mustUseForUpdate>        <overwrite_config_version_less_than>1.1</overwrite_config_version_less_than>        <configRefreshTime>86400</configRefreshTime>        <configRefreshOnPowerUp>true</configRefreshOnPowerUp>        <configRefreshSIMSwap>true</configRefreshSIMSwap>    </configInfo>    <janskyConfig>        <entitlement_server_FQDN>https://eas3.msg.t-mobile.com</entitlement_server_FQDN>        <entitlement_server_redirect_URI>https://eas3.msg.t-mobile.com/oauth2/v1/token</entitlement_server_redirect_URI>        <entitlement_server_token_URI>https://eas3.msg.t-mobile.com/oauth2/v1/token</entitlement_server_token_URI>        <IAMRedirectURL>https://account.t-mobile.com/oauth2/v1/auth</IAMRedirectURL>        <IAMOAuthClientIDNSDS>WSGconapp</IAMOAuthClientIDNSDS>        <IAMOAuthClientIDService>vowifiwsg</IAMOAuthClientIDService>        <IAMConsumerProfileURI/>        <WSG_URI>https://wsg.t-mobile.com</WSG_URI>        <IAMOAuthRequired>true</IAMOAuthRequired>        <GCM_Sender_ID>745178727006</GCM_Sender_ID>        <GCM_Update_Token_TTL>86400</GCM_Update_Token_TTL>        <Phone2ActivationURL>https://ma.t-mobile.com</Phone2ActivationURL>        <Phone2DeActivationURL>https://ma.t-mobile.com</Phone2DeActivationURL>        <mStore_FQDN>https://mstore.msg.sip.t-mobile.com</mStore_FQDN>        <usePhone20whileRoamingDomestic>true</usePhone20whileRoamingDomestic>        <usePhone20whileRoamingInternational>true</usePhone20whileRoamingInternational>    </janskyConfig></DeviceConfiguration>"

    .line 40
    .local v0, "xml":Ljava/lang/String;
    return-object v0
.end method

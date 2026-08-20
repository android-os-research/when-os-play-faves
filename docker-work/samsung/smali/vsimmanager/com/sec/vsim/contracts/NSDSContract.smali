.class public Lcom/sec/vsim/contracts/NSDSContract;
.super Ljava/lang/Object;
.source "NSDSContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/contracts/NSDSContract$AccessSteering;,
        Lcom/sec/vsim/contracts/NSDSContract$AccessSteeringColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$SimSwapNsdsConfigs;,
        Lcom/sec/vsim/contracts/NSDSContract$NsdsConfigs;,
        Lcom/sec/vsim/contracts/NSDSContract$NsdsConfigColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$GcmTokens;,
        Lcom/sec/vsim/contracts/NSDSContract$GcmTokensColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParameterServiceNames;,
        Lcom/sec/vsim/contracts/NSDSContract$DeviceConfig;,
        Lcom/sec/vsim/contracts/NSDSContract$DeviceConfigColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParameters;,
        Lcom/sec/vsim/contracts/NSDSContract$ConnectivityServicesColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$ConnectivityParamsColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$SimSwapServices;,
        Lcom/sec/vsim/contracts/NSDSContract$Services;,
        Lcom/sec/vsim/contracts/NSDSContract$ProvisioningParameters;,
        Lcom/sec/vsim/contracts/NSDSContract$ProvisioningParametersColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$ServiceColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$Accounts;,
        Lcom/sec/vsim/contracts/NSDSContract$AccountColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$LineEntities;,
        Lcom/sec/vsim/contracts/NSDSContract$Devices;,
        Lcom/sec/vsim/contracts/NSDSContract$Lines;,
        Lcom/sec/vsim/contracts/NSDSContract$PendingLines;,
        Lcom/sec/vsim/contracts/NSDSContract$PendingLinesColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$DeviceColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$LineColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$CommonColumns;,
        Lcom/sec/vsim/contracts/NSDSContract$QueryParams;
    }
.end annotation


# static fields
.field public static final ACCESS_STEERING:I = 0x41

.field public static final ACCOUNTS:I = 0x9

.field public static final ACCOUNT_ID:I = 0x2f

.field public static final ACTIVATE_ALL_LINES:I = 0x44

.field public static final ACTIVATE_LINE_ID:I = 0xd

.field public static final ACTIVATE_SIM_DEVICE:I = 0x1e

.field public static final ACTIVE_ACCOUNT:I = 0x7

.field public static final ACTIVE_LINES:I = 0x8

.field public static final ACTIVE_LINES_WITH_SERVICES:I = 0x1d

.field public static final ALL_LINES:I = 0x2d

.field public static final ALL_LINES_IN_ACTIVE_ACCOUNT:I = 0x2c

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CANCEL_MSISDN_AUTH:I = 0x39

.field public static final CONNECTIVITY_PARAMS:I = 0xa

.field public static final CONNECTIVITY_PARAM_SERVICE_NAMES:I = 0xb

.field public static final CREATE_TMO_ID:I = 0x37

.field public static final DEACTIVATE_ALL_LINES:I = 0x45

.field public static final DEACTIVATE_LINE_ID:I = 0xe

.field public static final DEACTIVATE_SIM_DEVICE:I = 0x1f

.field public static final DEVICES:I = 0x2

.field public static final DEVICE_CONFIG:I = 0x27

.field public static final DEVICE_CONFIG_ELEMENT:I = 0x3e

.field public static final DEVICE_ID:I = 0x3

.field public static final DEVICE_ID_LINE_ID_SERVICES:I = 0x6

.field public static final DEVICE_ID_SERVICES:I = 0x2a

.field public static final DEVICE_ID_SET_PRIMARY:I = 0x1a

.field public static final DEVICE_OWN_ACTIVATION_STATUS:I = 0x1c

.field public static final DEVICE_OWN_LOGIN_STATUS:I = 0x29

.field public static final DEVICE_OWN_NSDS_SERVICE_STATUS:I = 0x3d

.field public static final DEVICE_OWN_READY_STATUS:I = 0x3c

.field public static final DEVICE_PUSH_TOKEN:I = 0x43

.field public static final DISABLE_ACTIVE_ACCOUNT:I = 0x30

.field public static final DISABLE_CAB:I = 0x32

.field public static final DOWNLOAD_ALL_CONTACTS:I = 0x18

.field public static final ENABLE_CAB:I = 0x31

.field public static final ENTITLEMENT_URL:I = 0x49

.field public static final FORCE_CONFIG_UPDATE:I = 0x4c

.field public static final GCM_TOKENS:I = 0x4a

.field public static final GET_ANDSF_GCM_TOKEN:I = 0x4b

.field public static final INACTIVE_LINES_WITH_SERVICES:I = 0x46

.field public static final LINES:I = 0x0

.field public static final LINES_ENTITIES:I = 0x4

.field public static final LINE_ENTITY:I = 0x5

.field public static final LINE_ID:I = 0x1

.field public static final LINE_ID_ACTIVATE_SERVICES:I = 0x13

.field public static final LINE_ID_ADD_SERVICES:I = 0x11

.field public static final LINE_ID_DEACTIVATE_SERVICES:I = 0x14

.field public static final LINE_ID_DEVICES:I = 0x2b

.field public static final LINE_ID_GET_TRN:I = 0x1b

.field public static final LINE_ID_REMOVE_SERVICES:I = 0x12

.field public static final LOGOUT_FROM_ACTIVE_ACCOUNT:I = 0x16

.field public static final NSDS_CONFIGS:I = 0x28

.field public static final OPEN_CREATE_ACCOUNT_PAGE:I = 0x3b

.field public static final OPEN_LOGIN_PAGE:I = 0x15

.field public static final PENDING_LINES:I = 0x34

.field public static final PENDING_LINE_ID:I = 0x3a

.field public static final PENDING_MSISDN_AUTH:I = 0x38

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.nsds.provider"

.field public static final PROVISIONING_PARAMS:I = 0xc

.field public static final REFRESH_SIT:I = 0x33

.field public static final REPROVISION_LINE_ID:I = 0x40

.field public static final REQUEST_MSISDN_AUTH:I = 0x36

.field public static final REQUEST_MSISDN_LOGIN:I = 0x35

.field public static final SERVICES:I = 0x3f

.field public static final SIM_SWAP_NSDS_CONFIGS:I = 0x47

.field public static final SIM_SWAP_SERVICES:I = 0x48

.field public static final UPDATE_ACCESS_STEERING:I = 0x42

.field public static final UPDATE_DEVICE_NAME:I = 0x10

.field public static final UPDATE_E911_ADDRESS:I = 0x2e

.field public static final UPDATE_LINE_NAME:I = 0xf

.field public static final UPLOAD_ALL_CONTACTS:I = 0x17

.field public static final UPLOAD_UPDATED_CONTACT:I = 0x19

.field public static final VOWIFI_TOGGLE_OFF:I = 0x21

.field public static final VOWIFI_TOGGLE_ON:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "content://com.samsung.nsds.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/contracts/NSDSContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

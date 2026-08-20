.class public Lcom/sec/vsim/app/jansky/JanskyContract;
.super Ljava/lang/Object;
.source "JanskyContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/app/jansky/JanskyContract$NsdsConfigs;,
        Lcom/sec/vsim/app/jansky/JanskyContract$NsdsConfigColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParameterServiceNames;,
        Lcom/sec/vsim/app/jansky/JanskyContract$DeviceConfig;,
        Lcom/sec/vsim/app/jansky/JanskyContract$DeviceConfigColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParameters;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityServicesColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ConnectivityParamsColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$Services;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ProvisioningParameters;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ProvisioningParametersColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$ServiceColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$Accounts;,
        Lcom/sec/vsim/app/jansky/JanskyContract$AccountColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$LineEntities;,
        Lcom/sec/vsim/app/jansky/JanskyContract$Devices;,
        Lcom/sec/vsim/app/jansky/JanskyContract$Lines;,
        Lcom/sec/vsim/app/jansky/JanskyContract$DeviceColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$LineColumns;,
        Lcom/sec/vsim/app/jansky/JanskyContract$CommonColumns;
    }
.end annotation


# static fields
.field public static final ACCOUNTS:I = 0x9

.field public static final ACCOUNT_ID:I = 0x2f

.field public static final ACTIVATE_LINE_ID:I = 0xd

.field public static final ACTIVATE_SIM_DEVICE:I = 0x1e

.field public static final ACTIVE_ACCOUNT:I = 0x7

.field public static final ACTIVE_LINES:I = 0x8

.field public static final ACTIVE_LINES_WITH_SERVICES:I = 0x1d

.field public static final ALL_LINES:I = 0x2d

.field public static final ALL_LINES_IN_ACTIVE_ACCOUNT:I = 0x2c

.field public static final AUTHORITY_URI:Landroid/net/Uri;

.field public static final CONNECTIVITY_PARAMS:I = 0xa

.field public static final CONNECTIVITY_PARAM_SERVICE_NAMES:I = 0xb

.field public static final DEACTIVATE_LINE_ID:I = 0xe

.field public static final DEACTIVATE_SIM_DEVICE:I = 0x1f

.field public static final DEVICES:I = 0x2

.field public static final DEVICE_CONFIG:I = 0x27

.field public static final DEVICE_ID:I = 0x3

.field public static final DEVICE_ID_LINE_ID_SERVICES:I = 0x6

.field public static final DEVICE_ID_SERVICES:I = 0x2a

.field public static final DEVICE_ID_SET_PRIMARY:I = 0x1a

.field public static final DEVICE_OWN_ACTIVATION_STATUS:I = 0x1c

.field public static final DEVICE_OWN_LOGIN_STATUS:I = 0x29

.field public static final DISABLE_ACTIVE_ACCOUNT:I = 0x30

.field public static final DISABLE_CAB:I = 0x32

.field public static final DOWNLOAD_ALL_CONTACTS:I = 0x18

.field public static final ENABLE_CAB:I = 0x31

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

.field public static final OPEN_LOGIN_PAGE:I = 0x15

.field public static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.jansky.provider"

.field public static final PROVISIONING_PARAMS:I = 0xc

.field public static final UPDATE_DEVICE_NAME:I = 0x10

.field public static final UPDATE_E911_ADDRESS:I = 0x2e

.field public static final UPDATE_LINE_NAME:I = 0xf

.field public static final UPLOAD_ALL_CONTACTS:I = 0x17

.field public static final UPLOAD_UPDATED_CONTACT:I = 0x19


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-string v0, "content://com.samsung.jansky.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/app/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/android/server/DevRootKeyATCmd;
.super Ljava/lang/Object;
.source "DevRootKeyATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final blacklist AT_CMD_DRK_V1_WRITING_END:Ljava/lang/String; = "FF"

.field private static final blacklist AT_CMD_DRK_V2_VERSION:Ljava/lang/String; = "01"

.field private static final blacklist AT_CMD_DRK_V2_WRITING_END:Ljava/lang/String; = "FFF"

.field private static final blacklist AT_COMMAND_DEVROOTK:Ljava/lang/String; = "DEVROOTK"

.field private static final blacklist AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final blacklist AT_MAIN_INDEX:I = 0x0

.field private static final blacklist AT_MAIN_INDEX_READ_DATA:I = 0x1

.field private static final blacklist AT_MAIN_INDEX_TC_DATA:I = 0x9

.field private static final blacklist AT_MAIN_INDEX_VERIFY:I = 0x0

.field private static final blacklist AT_MAIN_INDEX_WRITE_DATA:I = 0x2

.field private static final blacklist AT_MAIN_READ_DATA:I = 0xa

.field private static final blacklist AT_MAIN_TC_DATA:I = 0x5a

.field private static final blacklist AT_MAIN_VERIFY:I = 0x0

.field private static final blacklist AT_MAIN_WRITE_DATA:I = 0x14

.field private static final blacklist AT_MID_INDEX:I = 0x1

.field private static final blacklist AT_MINOR_INDEX:I = 0x2

.field private static final blacklist AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG_FAIL(FAILED CONNECTION)"

.field private static final blacklist AT_RESPONSE_EXCEPION_OCCURS:Ljava/lang/String; = "NG_FAIL(EXCEPTION_OCCURS)"

.field private static final blacklist AT_RESPONSE_FAILED:Ljava/lang/String; = "NG_FAIL"

.field private static final blacklist AT_RESPONSE_INSTANCE_ERROR:Ljava/lang/String; = "NG_FAIL(INSTANCE ERROR)"

.field private static final blacklist AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG_FAIL(INVALID_PARAM)"

.field private static final blacklist AT_RESPONSE_MISSED_DATA:Ljava/lang/String; = "NG_FAIL(DATA MISSED)"

.field private static final blacklist AT_RESPONSE_NO_EM_TOKEN:Ljava/lang/String; = "NG_FAIL(NO_TOKEN)"

.field private static final blacklist AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final blacklist AT_RESPONSE_PMK_OK:Ljava/lang/String; = "OK(NOT SUPPORT PMK IN M OS)"

.field private static final blacklist AT_RESPONSE_UNIMPLEMENTED:Ljava/lang/String; = "NG_FAIL(UNIMPLEMENTED_CMD)"

.field private static final blacklist CSR_BRANCH_ID_LENGTH:I = 0x3

.field private static final blacklist CSR_REQUEST_PHASE2:I = 0x16

.field private static final blacklist CSR_TIMESTAMP_LENGTH:I = 0xe

.field private static final blacklist DRK_V1_SEQ_NO:I = 0x2

.field private static final blacklist DRK_V2_SEQ_NO:I = 0x3

.field private static final blacklist DRK_V2_VERSION:I = 0x2

.field private static final blacklist ERR_KEYMASTER_GAK_ROOT_FAIL:I = -0x2cf7

.field private static final blacklist ERR_KEYMASTER_JDM_FALSE_PROP:I = -0x2cf4

.field private static final blacklist ERR_KEYMASTER_JDM_NULL_PROP:I = -0x2cf5

.field private static final blacklist ERR_KEYMASTER_VERIFICATION_FAIL:I = -0x2cf6

.field private static final blacklist GOOGLE_ATTESTATION_KEY_VERIFY:I = 0x4

.field private static final blacklist GOOGLE_ATTESTATION_KEY_WRITE:I = 0x1a

.field private static final blacklist GoogleDevRootPubKey:[B

.field private static final blacklist GoogleRootPubKey:[B

.field private static final blacklist KEY_DRK_V1:I = 0x0

.field private static final blacklist KEY_DRK_V2:I = 0x2

.field private static final blacklist KEY_GOOGLE_ATTESTATION:I = 0x1

.field private static final blacklist KEY_RKP_DEVINFO:I = 0x5

.field private static final blacklist KEY_SAMSUNG_ATTESTATION:I = 0x3

.field private static final blacklist KEY_STRONGBOX_ATTESTATION:I = 0x4

.field private static final blacklist MODE_MNFR_ALLOW_ATCMD:I = 0x1c

.field private static final blacklist NOT_ERROR:I = 0x0

.field private static final blacklist PDP_ERROR:Ljava/lang/String; = "PDP_ERROR"

.field private static final blacklist REMOTE_KEY_PROVISIONING_DEVINFO_READ:I = 0xd

.field private static final blacklist SAMSUNG_ATTESTATION_CSR_REQUEST:I = 0x18

.field private static final blacklist SAMSUNG_ATTESTATION_KEY_VERIFY:I = 0x3

.field private static final blacklist SAMSUNG_ATTESTATION_KEY_WRITE:I = 0x19

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_UID_READ_PHASE1:I = 0xa

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE1:I = 0x0

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERIFY_PHASE2:I = 0x2

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_VERSION_READ_PHASE2:I = 0xc

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE1:I = 0x14

.field private static final blacklist SAMSUNG_DEVICE_ROOT_KEY_WRITE_PHASE2:I = 0x17

.field private static final blacklist SAMSUNG_PAYMENT_KEY_UID_READ_PHASE1:I = 0xb

.field private static final blacklist SAMSUNG_PAYMENT_KEY_VERIFY:I = 0x1

.field private static final blacklist SAMSUNG_PAYMENT_KEY_WRITE_PHASE1:I = 0x15

.field private static final blacklist STRONGBOX_ATTESTATION_KEY_VERIFY:I = 0x5

.field private static final blacklist STRONGBOX_ATTESTATION_KEY_WRITE:I = 0x1b

.field private static final blacklist TAG:Ljava/lang/String; = "DEVROOT#ATCmd(1.0.0)"

.field private static final blacklist TC_CHECK_DRK_VERSION:I = 0x5b

.field private static final blacklist TC_GENERATESERVICEKEY:I = 0x5f

.field private static final blacklist TC_GENERATESERVICEKEYWITHTLV:I = 0x60

.field private static final blacklist TC_GETDEVICEINFO:I = 0x61

.field private static final blacklist TC_GETDRKCERT:I = 0x5e

.field private static final blacklist TC_GETDRKUID:I = 0x5d

.field private static final blacklist TC_ISEXIST_DRK:I = 0x5c

.field private static final blacklist TC_SERVICE_AVAILABLE:I = 0x5a

.field private static final blacklist VERSION:Ljava/lang/String; = "1.0.0"

.field static blacklist getKeyWaitTime:I

.field private static final blacklist isDevDevice:Ljava/lang/String;

.field private static final blacklist isJDM:Z


# instance fields
.field private blacklist isJDMProductNotInHouse:Z

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

.field private blacklist mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

.field private blacklist mTlvKeyBlob:Ljava/lang/String;

.field private blacklist mTlvKeyBlobCounter:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 149
    const/16 v0, 0x226

    new-array v1, v0, [B

    fill-array-data v1, :array_2c

    sput-object v1, Lcom/android/server/DevRootKeyATCmd;->GoogleRootPubKey:[B

    .line 198
    new-array v0, v0, [B

    fill-array-data v0, :array_144

    sput-object v0, Lcom/android/server/DevRootKeyATCmd;->GoogleDevRootPubKey:[B

    .line 288
    const-string v0, "jdm"

    invoke-virtual {v0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isJDM:Z

    .line 290
    const-string/jumbo v0, "ro.boot.em.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DevRootKeyATCmd;->isDevDevice:Ljava/lang/String;

    .line 293
    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 818
    const/16 v0, 0x32

    sput v0, Lcom/android/server/DevRootKeyATCmd;->getKeyWaitTime:I

    return-void

    nop

    :array_2c
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x2t
        0xft
        0x0t
        0x30t
        -0x7et
        0x2t
        0xat
        0x2t
        -0x7et
        0x2t
        0x1t
        0x0t
        -0x51t
        -0x4at
        -0x39t
        -0x7et
        0x2bt
        -0x4ft
        -0x59t
        0x1t
        -0x14t
        0x2bt
        -0x4ct
        0x2et
        -0x75t
        -0x34t
        0x54t
        0x16t
        0x63t
        -0x55t
        -0x11t
        -0x68t
        0x2ft
        0x32t
        -0x39t
        0x7ft
        0x75t
        0x31t
        0x3t
        0xct
        -0x69t
        0x52t
        0x4bt
        0x1bt
        0x5ft
        -0x18t
        0x9t
        -0x5t
        -0x39t
        0x2at
        -0x57t
        0x45t
        0x1ft
        0x74t
        0x3ct
        -0x43t
        -0x66t
        0x6ft
        0x13t
        0x35t
        0x74t
        0x4at
        -0x5bt
        0x5et
        0x77t
        -0xat
        -0x4at
        -0x54t
        0x35t
        0x35t
        -0x12t
        0x17t
        -0x3et
        0x5et
        0x63t
        -0x6bt
        0x17t
        -0x23t
        -0x64t
        -0x6et
        -0x1at
        0x37t
        0x4at
        0x53t
        -0x35t
        -0x2t
        0x25t
        -0x71t
        -0x71t
        -0x5t
        -0x4at
        -0x3t
        0x12t
        -0x6dt
        0x78t
        -0x5et
        0x2at
        0x4ct
        -0x57t
        -0x64t
        0x45t
        0x2dt
        0x47t
        -0x5bt
        -0x61t
        0x32t
        0x1t
        -0xct
        0x41t
        -0x69t
        -0x36t
        0x1ct
        -0x33t
        0x7et
        0x76t
        0x2ft
        -0x4et
        -0xbt
        0x31t
        0x51t
        -0x4at
        -0x2t
        -0x4et
        -0x1t
        -0x3t
        0x2bt
        0x6ft
        -0x1ct
        -0x2t
        0x5bt
        -0x3at
        -0x43t
        -0x62t
        -0x3dt
        0x4bt
        -0x2t
        0x8t
        0x23t
        -0x63t
        -0x56t
        -0x4t
        -0x15t
        -0x72t
        -0x4bt
        -0x58t
        -0x13t
        0x2bt
        0x3at
        -0x33t
        -0x64t
        0x5et
        0x3at
        0x77t
        -0x70t
        -0x1ft
        -0x4bt
        0x14t
        0x42t
        0x79t
        0x31t
        0x59t
        -0x7bt
        -0x68t
        0x11t
        -0x53t
        -0x62t
        -0x4et
        -0x57t
        0x6bt
        -0x43t
        -0x29t
        -0x5bt
        0x7ct
        -0x6dt
        -0x57t
        0x1ct
        0x41t
        -0x4t
        -0x33t
        0x27t
        -0x2at
        0x7ft
        -0x2at
        -0xat
        0x71t
        -0x56t
        0xbt
        -0x7ft
        0x52t
        0x61t
        -0x53t
        0x38t
        0x4ft
        -0x5dt
        0x79t
        0x44t
        -0x7at
        0x46t
        0x4t
        -0x23t
        -0x4dt
        -0x28t
        -0x3ct
        -0x7t
        0x20t
        -0x5ft
        -0x65t
        0x16t
        0x56t
        -0x3et
        -0xft
        0x4at
        -0x2at
        -0x30t
        0x3ct
        0x56t
        -0x14t
        0x6t
        0x8t
        -0x67t
        0x4t
        0x1ct
        0x1et
        -0x2ft
        -0x5bt
        -0x2t
        0x6dt
        0x34t
        0x40t
        -0x4bt
        0x56t
        -0x46t
        -0x2ft
        -0x30t
        -0x5ft
        0x52t
        0x58t
        -0x64t
        0x53t
        -0x1bt
        0x5dt
        0x37t
        0x7t
        0x62t
        -0x10t
        0x12t
        0x2et
        -0x11t
        -0x6ft
        -0x7at
        0x1bt
        0x1bt
        0xet
        0x6ct
        0x4ct
        -0x80t
        -0x6et
        0x74t
        -0x67t
        -0x40t
        -0x17t
        -0x42t
        -0x40t
        -0x48t
        0x3et
        0x3bt
        -0x3ft
        -0x7t
        0x3ct
        0x72t
        -0x40t
        0x49t
        0x60t
        0x4bt
        -0x43t
        0x2ft
        0x13t
        0x45t
        -0x1at
        0x2ct
        0x3ft
        -0x72t
        0x26t
        -0x25t
        -0x14t
        0x6t
        -0x37t
        0x47t
        0x66t
        -0xdt
        -0x3ft
        0x28t
        0x23t
        -0x63t
        0x4ft
        0x43t
        0x12t
        -0x6t
        -0x28t
        0x12t
        0x38t
        -0x79t
        -0x20t
        0x6bt
        -0x14t
        -0xbt
        0x67t
        0x58t
        0x3bt
        -0x8t
        0x35t
        0x5at
        -0x7ft
        -0x2t
        -0x16t
        -0x46t
        -0x7t
        -0x66t
        -0x7dt
        -0x38t
        -0x21t
        0x3et
        0x2at
        0x32t
        0x2at
        -0x4t
        0x67t
        0x2bt
        -0xft
        0x20t
        -0x4ft
        0x35t
        0x15t
        -0x75t
        0x68t
        0x21t
        -0x32t
        -0x51t
        0x30t
        -0x65t
        0x6et
        -0x12t
        0x77t
        -0x7t
        -0x78t
        0x33t
        -0x50t
        0x18t
        -0x26t
        -0x5ft
        0xet
        0x45t
        0x1ft
        0x6t
        -0x5dt
        0x74t
        -0x2bt
        0x7t
        -0x7ft
        -0xdt
        0x59t
        0x8t
        0x29t
        0x66t
        -0x45t
        0x77t
        -0x75t
        -0x6dt
        0x8t
        -0x6ct
        0x26t
        -0x68t
        -0x19t
        0x4et
        0xbt
        -0x33t
        0x24t
        0x62t
        -0x76t
        0x1t
        -0x3et
        -0x34t
        0x3t
        -0x1bt
        0x1ft
        0xbt
        0x3et
        0x5bt
        0x4at
        -0x3ft
        -0x1ct
        -0x21t
        -0x62t
        -0x51t
        -0x61t
        -0xat
        -0x5ct
        -0x6et
        -0x59t
        0x7ct
        0x14t
        -0x7dt
        -0x78t
        0x28t
        -0x7bt
        0x1t
        0x5bt
        0x42t
        0x2ct
        -0x1at
        0x7bt
        -0x80t
        -0x48t
        -0x74t
        -0x65t
        0x48t
        -0x1ft
        0x3bt
        0x60t
        0x7at
        -0x4bt
        0x45t
        -0x39t
        0x23t
        -0x1t
        -0x74t
        0x44t
        -0x8t
        -0xet
        -0x2dt
        0x68t
        -0x47t
        -0xat
        0x52t
        0xdt
        0x31t
        0x14t
        0x5et
        -0x41t
        -0x62t
        -0x7at
        0x2at
        -0x29t
        0x1dt
        -0xat
        -0x5dt
        -0x41t
        -0x2et
        0x45t
        0x9t
        0x59t
        -0x2at
        0x53t
        0x74t
        0xdt
        -0x69t
        -0x5ft
        0x2ft
        0x36t
        -0x75t
        0x13t
        -0x11t
        0x66t
        -0x2bt
        -0x30t
        -0x5bt
        0x4at
        0x6et
        0x2ft
        0x5dt
        -0x66t
        0x6ft
        -0x11t
        0x44t
        0x68t
        0x32t
        -0x44t
        0x67t
        -0x7ct
        0x47t
        0x25t
        -0x7at
        0x1ft
        0x9t
        0x3dt
        -0x30t
        -0x1at
        -0xdt
        0x40t
        0x5dt
        -0x58t
        -0x6at
        0x43t
        -0x11t
        0xft
        0x4dt
        0x69t
        -0x4at
        0x42t
        0x0t
        0x51t
        -0x3t
        -0x47t
        0x30t
        0x49t
        0x67t
        0x3et
        0x36t
        -0x6bt
        0x5t
        -0x80t
        -0x2dt
        -0x33t
        -0xct
        -0x5t
        -0x30t
        -0x75t
        -0x3bt
        -0x7ct
        -0x7dt
        -0x6bt
        0x26t
        0x0t
        0x63t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data

    nop

    :array_144
    .array-data 1
        0x30t
        -0x7et
        0x2t
        0x22t
        0x30t
        0xdt
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x1t
        0x5t
        0x0t
        0x3t
        -0x7et
        0x2t
        0xft
        0x0t
        0x30t
        -0x7et
        0x2t
        0xat
        0x2t
        -0x7et
        0x2t
        0x1t
        0x0t
        -0x19t
        -0x37t
        0x1dt
        0x35t
        -0x7t
        -0x68t
        0x72t
        0x2bt
        0x41t
        0x64t
        0x37t
        -0x6dt
        -0x11t
        0x16t
        -0x57t
        -0x5at
        -0x37t
        0x42t
        0x63t
        0x67t
        -0x7ft
        0x18t
        0x2ct
        0x3at
        -0x38t
        -0x6et
        0x65t
        -0x65t
        0x7et
        0x76t
        -0x77t
        0x32t
        -0x72t
        0x2t
        -0xft
        -0x75t
        -0x4t
        -0x31t
        -0x5et
        0x1dt
        -0x7ct
        -0x67t
        0x21t
        -0x13t
        0x1bt
        0x28t
        0x6ft
        -0x78t
        -0x16t
        -0x45t
        0x1et
        0x3et
        0x34t
        -0x76t
        0x16t
        -0x1et
        0x1at
        -0x5at
        -0x77t
        -0xat
        -0x20t
        0x40t
        -0xct
        0x5t
        0x46t
        -0x39t
        -0x38t
        -0x3ct
        -0x6bt
        0x5ct
        -0x24t
        -0x71t
        0x4ft
        0xat
        0x40t
        -0x59t
        -0x7et
        -0x63t
        -0x1bt
        -0x65t
        -0x4at
        -0x75t
        0x60t
        -0x6ct
        0x2bt
        0x59t
        0x12t
        -0x6et
        -0x6t
        0x22t
        0x33t
        0x5bt
        -0x25t
        -0x7dt
        -0x16t
        0x24t
        0x51t
        0x0t
        -0x53t
        -0x16t
        -0x6dt
        -0x62t
        0x68t
        0x7et
        -0x79t
        -0x37t
        0x66t
        -0x4at
        0x5ct
        -0x65t
        0x78t
        -0x37t
        -0x6ft
        -0x8t
        -0x7at
        -0x7t
        0x51t
        -0x2ct
        -0x7bt
        -0x2et
        -0x39t
        0x54t
        -0x13t
        -0x2ft
        -0x28t
        -0x7ct
        -0x37t
        0x23t
        0x65t
        0x5at
        0x16t
        0x32t
        -0x66t
        0xdt
        0x54t
        0x3ft
        -0x1bt
        0x24t
        0x3ft
        -0x4bt
        0x37t
        0x11t
        0x0t
        -0x34t
        0x1ct
        0x7dt
        0x76t
        0xet
        -0x45t
        0x3bt
        -0x41t
        -0x2t
        -0x8t
        -0x5bt
        -0x7at
        0x58t
        -0x4dt
        -0x56t
        0x36t
        0x0t
        0x1bt
        -0x5t
        -0x1ct
        0x49t
        0x50t
        0x7et
        -0x20t
        -0x4ft
        0x68t
        -0x3at
        -0x21t
        -0x25t
        0x5bt
        0x7dt
        0x5ct
        0x6t
        -0x7dt
        -0x59t
        -0x1bt
        0x4et
        -0x7t
        -0x45t
        0x49t
        -0x29t
        0x63t
        -0x1bt
        -0x5et
        -0x5ct
        -0x42t
        0x69t
        0x28t
        0x1bt
        -0x5at
        -0x28t
        -0x37t
        -0x61t
        0x50t
        0x56t
        0x30t
        0x7ft
        -0x3t
        0x4at
        -0x26t
        0x11t
        0x9t
        -0x76t
        0x1bt
        -0x27t
        -0x64t
        -0x5dt
        0x7at
        0x7ft
        -0x45t
        -0x3et
        -0x6bt
        -0x21t
        -0x7bt
        0x2ft
        -0x1t
        -0x38t
        -0x2dt
        0x75t
        0x51t
        -0x23t
        -0x35t
        -0x14t
        -0x2bt
        -0x7at
        -0x9t
        -0x4ct
        0x10t
        0x38t
        -0x29t
        -0x53t
        0x1ft
        0x24t
        -0x1dt
        0x32t
        0x49t
        -0x39t
        -0x33t
        -0x68t
        0x2t
        0x3ct
        -0x44t
        -0xct
        -0x40t
        -0x3t
        0x41t
        0x61t
        -0x63t
        0x3t
        -0x35t
        0x74t
        0x62t
        -0x57t
        0x1ct
        0x68t
        0x12t
        0xbt
        -0xdt
        0x26t
        0x2bt
        -0x2t
        0x2ft
        -0x4t
        -0xft
        -0x5dt
        0x4at
        0x1ct
        -0x2ct
        0x2bt
        -0xft
        0x47t
        -0x4ft
        0x71t
        0x5et
        -0x60t
        0x3t
        -0x48t
        0x61t
        -0x45t
        0x24t
        0x15t
        -0x30t
        0x7bt
        -0x21t
        0x56t
        -0xat
        -0x78t
        0x74t
        -0x61t
        0x5dt
        -0x12t
        -0x40t
        0x5ct
        -0x4t
        0x62t
        0x9t
        -0x7ft
        -0x50t
        0x32t
        0x62t
        -0x4ct
        -0xat
        -0x36t
        0x44t
        0x69t
        -0x7ct
        -0xat
        -0x50t
        0x78t
        0x1ct
        0x38t
        -0x29t
        0x2at
        0x2t
        0x6et
        -0x53t
        -0x43t
        0x52t
        -0x54t
        -0x4et
        0x1et
        0x6ct
        -0x2ft
        0x5at
        -0x78t
        0x48t
        0x2at
        -0x4at
        -0x7et
        -0x5ft
        0x72t
        -0x3et
        0x40t
        0x5at
        0x3et
        0xft
        0xdt
        0x5et
        0x53t
        0x18t
        0x62t
        0x48t
        -0x2at
        0x7ct
        -0x60t
        0x55t
        0x26t
        -0x32t
        -0x57t
        -0x11t
        0x57t
        -0x74t
        -0x27t
        -0x7ct
        0x5ft
        0x3dt
        0x28t
        0x26t
        -0x48t
        -0x1ct
        -0x2t
        -0x67t
        -0x5t
        0x32t
        0x11t
        0x43t
        0x19t
        -0x23t
        0xat
        -0x7ct
        0x54t
        -0x1t
        0x76t
        0x6bt
        -0x46t
        0x1t
        0x7ct
        -0x60t
        0x39t
        -0x26t
        -0x10t
        -0x69t
        -0x23t
        0x4bt
        -0xdt
        -0x65t
        0x15t
        0x1dt
        0x7at
        0x71t
        0x4dt
        -0x67t
        0x39t
        -0x48t
        -0x1t
        0x33t
        0x20t
        0x30t
        0x7et
        0x24t
        -0x78t
        -0x38t
        0x29t
        -0x10t
        0x7bt
        -0x47t
        0x1ct
        -0x7dt
        -0x70t
        0x2et
        -0x5t
        0x7ct
        0x43t
        -0x18t
        0x44t
        0x4at
        0x28t
        0x60t
        -0x37t
        -0x3t
        0x47t
        -0x25t
        0x64t
        -0x4at
        -0x25t
        -0x4dt
        -0xat
        0x4at
        -0x30t
        -0x36t
        0x6et
        0xet
        -0x3dt
        0x4bt
        0x71t
        0x13t
        0x71t
        0x6t
        0x25t
        0x3dt
        -0x20t
        -0x6dt
        -0x10t
        0xbt
        -0x6dt
        -0x70t
        0x79t
        0x33t
        -0x79t
        -0x51t
        0x57t
        0x49t
        0x43t
        0x54t
        0x74t
        -0x24t
        -0x4bt
        -0x3t
        0x30t
        -0x65t
        -0x74t
        -0xat
        -0x6bt
        -0x1t
        0x50t
        0x2ct
        -0x25t
        0x45t
        0x13t
        0x2ct
        0x2at
        0x3bt
        0x4ct
        0x5at
        0x58t
        0x12t
        0x70t
        0x7t
        -0x1at
        -0x76t
        -0x75t
        -0x17t
        -0x4at
        -0x9t
        0x33t
        -0xdt
        -0x63t
        0x7et
        -0x76t
        -0x76t
        -0x52t
        0x20t
        0x39t
        -0x5ct
        0x50t
        0x66t
        0x7et
        0x56t
        0x79t
        -0x59t
        -0xat
        0x37t
        -0x8t
        -0x73t
        -0x8t
        0x57t
        0x1t
        0x5t
        0x1t
        0x2t
        0x3t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DevRootKeyATCmd;->isJDMProductNotInHouse:Z

    .line 298
    iput-object p1, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    .line 299
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 300
    new-instance v1, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    .line 306
    iput-boolean v0, p0, Lcom/android/server/DevRootKeyATCmd;->isJDMProductNotInHouse:Z

    .line 311
    new-instance v0, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;-><init>(Landroid/content/Context;)V

    .line 312
    .local v0, "mDeviceIDProvisionManager":Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 313
    invoke-virtual {v0}, Lcom/samsung/android/service/DeviceIDProvisionService/DeviceIDProvisionManager;->provision()V

    .line 314
    :cond_2a
    return-void
.end method

.method private blacklist appendKeyBlob(ILjava/lang/String;)Z
    .registers 6
    .param p1, "sequenceNo"    # I
    .param p2, "keyBlob"    # Ljava/lang/String;

    .line 780
    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 782
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 783
    iput-object p2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    goto :goto_24

    .line 788
    :cond_8
    iget v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    add-int/2addr v1, v0

    if-ne p1, v1, :cond_25

    .line 790
    iput p1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 799
    :goto_24
    return v0

    .line 795
    :cond_25
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist checkKeyValidity(I)I
    .registers 13
    .param p1, "keyType"    # I

    .line 821
    const/4 v0, 0x0

    .line 822
    .local v0, "ret":I
    const/4 v1, 0x1

    .line 823
    .local v1, "isSupportSKeymaster":Z
    const/4 v2, 0x0

    .line 824
    .local v2, "isSupportStrongboxKeymaster":Z
    nop

    .line 825
    const-string/jumbo v3, "ro.product.first_api_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x21

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lt v3, v4, :cond_17

    move v3, v6

    goto :goto_18

    :cond_17
    move v3, v5

    .line 826
    .local v3, "isSystemFirstApiLevelMoreThanT":Z
    :goto_18
    nop

    .line 827
    const-string/jumbo v7, "ro.vendor.build.version.sdk"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v4, :cond_28

    move v4, v6

    goto :goto_29

    :cond_28
    move v4, v5

    .line 828
    .local v4, "isVendorFirstApiLevelMoreThanT":Z
    :goto_29
    nop

    .line 829
    const-string/jumbo v7, "ro.build.flavor"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a14m"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_62

    .line 830
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a14xm"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_62

    .line 831
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "a24"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_62

    .line 832
    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "a34x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_60

    goto :goto_62

    :cond_60
    move v7, v5

    goto :goto_63

    :cond_62
    :goto_62
    move v7, v6

    .line 834
    .local v7, "isExceptionHandlingGrfSModules":Z
    :goto_63
    if-eqz v3, :cond_6a

    if-nez v4, :cond_69

    if-eqz v7, :cond_6a

    :cond_69
    move v5, v6

    .line 837
    .local v5, "isSupportIDAttestation":Z
    :cond_6a
    const-string v8, "DEVROOT#ATCmd(1.0.0)"

    if-eqz v1, :cond_89

    .line 838
    if-eqz v5, :cond_7c

    .line 839
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->installDeviceID(I)I

    move-result v0

    .line 840
    if-eqz v0, :cond_7c

    .line 841
    const-string v6, "installDeviceID failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return v0

    .line 846
    :cond_7c
    invoke-direct {p0, p1}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v0

    .line 847
    if-eqz v0, :cond_89

    .line 848
    const-string/jumbo v6, "validateDeviceKey failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    return v0

    .line 853
    :cond_89
    if-eq p1, v6, :cond_90

    const/4 v6, 0x4

    if-ne p1, v6, :cond_9d

    if-eqz v2, :cond_9d

    .line 854
    :cond_90
    invoke-direct {p0, p1, v5}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKeyFromKeystore(IZ)I

    move-result v0

    .line 855
    if-eqz v0, :cond_9d

    .line 856
    const-string/jumbo v6, "validateDeviceKeyFromKeystore failed"

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    return v0

    .line 861
    :cond_9d
    return v0
.end method

.method private native blacklist generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B
.end method

.method private blacklist getKeyBlobIndex()I
    .registers 2

    .line 809
    iget v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    return v0
.end method

.method private blacklist getTotalKeyBlob()[B
    .registers 2

    .line 804
    iget-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private blacklist initTlvKeyBlob()V
    .registers 2

    .line 814
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlobCounter:I

    .line 815
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DevRootKeyATCmd;->mTlvKeyBlob:Ljava/lang/String;

    .line 816
    return-void
.end method

.method private native blacklist installDeviceBoundCertificate(I[B)I
.end method

.method private blacklist installDeviceID(I)I
    .registers 24
    .param p1, "keyType"    # I

    .line 865
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 866
    .local v12, "telephonyService":Landroid/telephony/TelephonyManager;
    sget-object v13, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 867
    .local v13, "brand":Ljava/lang/String;
    sget-object v14, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 868
    .local v14, "device":Ljava/lang/String;
    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 869
    .local v15, "produt":Ljava/lang/String;
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v16

    .line 870
    .local v16, "serial":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v17

    .line 871
    .local v17, "imei1":Ljava/lang/String;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v18

    .line 872
    .local v18, "imei2":Ljava/lang/String;
    invoke-virtual {v12, v0}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v19

    .line 873
    .local v19, "meid":Ljava/lang/String;
    sget-object v20, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 874
    .local v20, "manufacturer":Ljava/lang/String;
    sget-object v21, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 876
    .local v21, "model":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/android/server/DevRootKeyATCmd;->installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native blacklist installDeviceID(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native blacklist installDeviceUnboundKey(I[B)I
.end method

.method private blacklist isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z
    .registers 8
    .param p1, "rootCert"    # Ljava/security/cert/Certificate;
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 880
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 881
    .local v0, "X509RootCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 882
    .local v1, "pubkey":Ljava/security/PublicKey;
    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    .line 884
    .local v2, "pubkeyEncoded":[B
    const/4 v3, 0x1

    if-eq p2, v3, :cond_11

    const/4 v4, 0x4

    if-ne p2, v4, :cond_22

    .line 885
    :cond_11
    sget-object v4, Lcom/android/server/DevRootKeyATCmd;->GoogleRootPubKey:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_24

    sget-object v4, Lcom/android/server/DevRootKeyATCmd;->GoogleDevRootPubKey:[B

    .line 886
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_24

    .line 891
    :cond_22
    const/4 v3, 0x0

    return v3

    .line 887
    :cond_24
    :goto_24
    return v3
.end method

.method private native blacklist isExistDRK(I)I
.end method

.method private native blacklist isSupportedDrkV2()Z
.end method

.method private blacklist isValidEM()Z
    .registers 6

    .line 1080
    sget-boolean v0, Lcom/android/server/DevRootKeyATCmd;->isJDM:Z

    const/4 v1, 0x1

    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    if-nez v0, :cond_d

    .line 1081
    const-string v0, "It is not a JDM project"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    return v1

    .line 1085
    :cond_d
    sget-object v0, Lcom/android/server/DevRootKeyATCmd;->isDevDevice:Ljava/lang/String;

    const-string v3, "0x1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1086
    const-string v0, "It is not A User Product Device"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    return v1

    .line 1090
    :cond_1d
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object v3, p0, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 1092
    .local v0, "EMMgr":Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_35

    .line 1093
    const-string v1, "Failed to connect to em service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return v4

    .line 1097
    :cond_35
    const/16 v3, 0x1c

    invoke-virtual {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result v3

    if-ne v3, v1, :cond_43

    .line 1098
    const-string v3, "EM Status : Permitted"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    return v1

    .line 1102
    :cond_43
    const-string v1, "EM Status : Not Permitted"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return v4
.end method

.method private blacklist parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .registers 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 763
    const/4 v0, 0x0

    .line 766
    .local v0, "result":[Ljava/lang/String;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "params":Ljava/lang/String;
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 773
    .end local v1    # "params":Ljava/lang/String;
    goto :goto_17

    .line 769
    :catch_12
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 772
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_17
    return-object v0
.end method

.method private native blacklist readDrkUID(I)Ljava/lang/String;
.end method

.method private native blacklist readKeyInfo(I)[B
.end method

.method private native blacklist validateDeviceKey(I)I
.end method

.method private blacklist validateDeviceKeyFromKeystore(IZ)I
    .registers 32
    .param p1, "keyType"    # I
    .param p2, "isSupportIDAttestation"    # Z

    .line 895
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "gak_rsa_alias"

    const-string v4, "UTF-8"

    const-string v5, "SHA-256"

    const-string v6, "gak_ec_alias"

    const-string v7, "AndroidKeyStore"

    const/4 v8, 0x0

    .line 896
    .local v8, "ret":Z
    const-string v9, "gak_ec_alias"

    .line 897
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    const-string v10, "gak_ec_challenge"

    .line 898
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    const-string v11, "gak_rsa_alias"

    .line 899
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    const-string v12, "gak_rsa_challenge"

    .line 905
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :try_start_17
    invoke-static {v7}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v14

    .line 906
    .local v14, "keyStore":Ljava/security/KeyStore;
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 909
    new-instance v15, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/16 v13, 0xc

    invoke-direct {v15, v6, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    .line 910
    .local v15, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/16 v13, 0x100

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 911
    const-string v13, "NONE"

    filled-new-array {v5, v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v15, v13}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 912
    const-string v13, "gak_ec_challenge"
    :try_end_36
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/NoSuchProviderException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/cert/CertificateException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/ProviderException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/SignatureException; {:try_start_17 .. :try_end_36} :catch_262
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_36} :catch_262

    move/from16 v17, v8

    .end local v8    # "ret":Z
    .local v17, "ret":Z
    :try_start_38
    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :try_end_43
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/NoSuchProviderException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/KeyStoreException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/cert/CertificateException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/ProviderException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/SignatureException; {:try_start_38 .. :try_end_43} :catch_255
    .catch Ljava/security/InvalidKeyException; {:try_start_38 .. :try_end_43} :catch_255

    .line 913
    const-string v8, "phone"

    if-eqz p2, :cond_103

    .line 914
    :try_start_47
    iget-object v13, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 915
    .local v13, "telephonyService":Landroid/telephony/TelephonyManager;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v22, v21

    .line 916
    .local v22, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v21
    :try_end_5a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/NoSuchProviderException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/KeyStoreException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/cert/CertificateException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/ProviderException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/lang/NullPointerException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/SignatureException; {:try_start_47 .. :try_end_5a} :catch_255
    .catch Ljava/security/InvalidKeyException; {:try_start_47 .. :try_end_5a} :catch_255

    .line 917
    .local v21, "serial":Ljava/lang/String;
    move-object/from16 v23, v9

    const/4 v9, 0x0

    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .local v23, "GAK_EC_ALIAS":Ljava/lang/String;
    :try_start_5d
    invoke-virtual {v13, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v24, v19

    .line 918
    .local v24, "imei":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v25
    :try_end_67
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/NoSuchProviderException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/KeyStoreException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/cert/CertificateException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/ProviderException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/lang/NullPointerException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/SignatureException; {:try_start_5d .. :try_end_67} :catch_f7
    .catch Ljava/security/InvalidKeyException; {:try_start_5d .. :try_end_67} :catch_f7

    move-object/from16 v9, v25

    .line 920
    .local v9, "meid":Ljava/lang/String;
    if-eqz v21, :cond_9f

    :try_start_6b
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v25
    :try_end_6f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/NoSuchProviderException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/KeyStoreException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/cert/CertificateException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/ProviderException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/lang/NullPointerException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/SignatureException; {:try_start_6b .. :try_end_6f} :catch_93
    .catch Ljava/security/InvalidKeyException; {:try_start_6b .. :try_end_6f} :catch_93

    if-eqz v25, :cond_9f

    .line 921
    move-object/from16 v25, v10

    const/16 v20, 0x1

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v25, "GAK_EC_CHALLENGE":Ljava/lang/String;
    :try_start_75
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10
    :try_end_79
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/NoSuchProviderException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/KeyStoreException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/cert/CertificateException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/ProviderException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/lang/NullPointerException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/SignatureException; {:try_start_75 .. :try_end_79} :catch_89
    .catch Ljava/security/InvalidKeyException; {:try_start_75 .. :try_end_79} :catch_89

    move-object/from16 v26, v11

    move-object/from16 v11, v22

    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v26, "GAK_RSA_ALIAS":Ljava/lang/String;
    :try_start_7d
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_80
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/NoSuchProviderException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/KeyStoreException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/cert/CertificateException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/ProviderException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/lang/NullPointerException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/SignatureException; {:try_start_7d .. :try_end_80} :catch_81
    .catch Ljava/security/InvalidKeyException; {:try_start_7d .. :try_end_80} :catch_81

    goto :goto_a5

    .line 1008
    .end local v9    # "meid":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    :catch_81
    move-exception v0

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v8, v17

    goto/16 :goto_26e

    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_89
    move-exception v0

    move-object/from16 v26, v11

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v8, v17

    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_26e

    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :catch_93
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object v3, v0

    move-object/from16 v22, v12

    move/from16 v8, v17

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_26e

    .line 920
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v9    # "meid":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .restart local v21    # "serial":Ljava/lang/String;
    .restart local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v24    # "imei":Ljava/lang/String;
    :cond_9f
    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v11, v22

    .line 922
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v22    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_a5
    if-eqz v24, :cond_c0

    :try_start_a7
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v10
    :try_end_ab
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/NoSuchProviderException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/KeyStoreException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/cert/CertificateException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/ProviderException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/SignatureException; {:try_start_a7 .. :try_end_ab} :catch_b8
    .catch Ljava/security/InvalidKeyException; {:try_start_a7 .. :try_end_ab} :catch_b8

    if-eqz v10, :cond_c0

    .line 923
    move-object/from16 v22, v12

    const/4 v10, 0x2

    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .local v22, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :try_start_b0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    .line 1008
    .end local v9    # "meid":Ljava/lang/String;
    .end local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_b8
    move-exception v0

    move-object/from16 v22, v12

    move-object v3, v0

    move/from16 v8, v17

    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    goto/16 :goto_26e

    .line 922
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v9    # "meid":Ljava/lang/String;
    .restart local v11    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .restart local v21    # "serial":Ljava/lang/String;
    .restart local v24    # "imei":Ljava/lang/String;
    :cond_c0
    move-object/from16 v22, v12

    .line 924
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :goto_c2
    if-eqz v9, :cond_d2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_d2

    .line 925
    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_d2
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [I

    .line 928
    .local v10, "idTypes":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d9
    move-object/from16 v27, v9

    .end local v9    # "meid":Ljava/lang/String;
    .local v27, "meid":Ljava/lang/String;
    array-length v9, v10

    if-ge v12, v9, :cond_ef

    .line 929
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v10, v12

    .line 928
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v27

    goto :goto_d9

    .line 931
    .end local v12    # "i":I
    :cond_ef
    const/4 v9, 0x1

    invoke-virtual {v15, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 932
    invoke-virtual {v15, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    goto :goto_10b

    .line 1008
    .end local v13    # "telephonyService":Landroid/telephony/TelephonyManager;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .end local v21    # "serial":Ljava/lang/String;
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v24    # "imei":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v27    # "meid":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_f7
    move-exception v0

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object v3, v0

    move/from16 v8, v17

    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto/16 :goto_26e

    .line 913
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v14    # "keyStore":Ljava/security/KeyStore;
    .restart local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :cond_103
    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    .line 934
    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_10b
    const/4 v9, 0x4

    if-ne v2, v9, :cond_112

    .line 935
    const/4 v10, 0x1

    invoke-virtual {v15, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 937
    :cond_112
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v10

    .line 938
    .local v10, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v11, "EC"

    invoke-static {v11, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v11

    .line 939
    .local v11, "kpGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v11, v10}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 940
    invoke-virtual {v11}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 943
    invoke-virtual {v14, v6}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 944
    .local v6, "gakEcCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v1, v6}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v12
    :try_end_12a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/NoSuchProviderException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/KeyStoreException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/cert/CertificateException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/ProviderException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/lang/NullPointerException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/SignatureException; {:try_start_b0 .. :try_end_12a} :catch_250
    .catch Ljava/security/InvalidKeyException; {:try_start_b0 .. :try_end_12a} :catch_250

    .line 945
    .end local v17    # "ret":Z
    .local v12, "ret":Z
    if-nez v12, :cond_12f

    .line 946
    const/16 v3, -0x2cf6

    return v3

    .line 949
    :cond_12f
    const/4 v13, 0x0

    :try_start_130
    aget-object v17, v6, v13

    check-cast v17, Ljava/security/cert/X509Certificate;

    move-object/from16 v13, v17

    .line 950
    .local v13, "appEcCert":Ljava/security/cert/X509Certificate;
    const/16 v17, 0x1

    aget-object v21, v6, v17

    check-cast v21, Ljava/security/cert/X509Certificate;

    move-object/from16 v17, v21

    .line 951
    .local v17, "gakEcCert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 954
    array-length v9, v6

    const/16 v20, 0x1

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-direct {v1, v9, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v9

    const/16 v24, -0x2cf7

    if-nez v9, :cond_155

    .line 955
    return v24

    .line 959
    :cond_155
    new-instance v9, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object/from16 v27, v6

    const/16 v6, 0xc

    .end local v6    # "gakEcCertChain":[Ljava/security/cert/Certificate;
    .local v27, "gakEcCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v9, v3, v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    move-object v6, v9

    .line 960
    .end local v15    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    .local v6, "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    const/16 v9, 0x800

    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 961
    const-string v9, "PSS"

    const-string v15, "PKCS1"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 962
    const-string v9, "SHA-1"

    filled-new-array {v5, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 963
    const-string v5, "gak_rsa_challenge"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationChallenge([B)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 964
    if-eqz p2, :cond_202

    .line 965
    iget-object v4, v1, Lcom/android/server/DevRootKeyATCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 966
    .local v4, "telephonyService":Landroid/telephony/TelephonyManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v8

    .line 968
    .local v8, "serial":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v15

    .line 969
    .local v15, "imei":Ljava/lang/String;
    invoke-virtual {v4, v9}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v9, v16

    .line 971
    .local v9, "meid":Ljava/lang/String;
    if-eqz v8, :cond_1b7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_1b7

    .line 972
    move-object/from16 v28, v4

    const/16 v16, 0x1

    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    .local v28, "telephonyService":Landroid/telephony/TelephonyManager;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b9

    .line 971
    .end local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_1b7
    move-object/from16 v28, v4

    .line 973
    .end local v4    # "telephonyService":Landroid/telephony/TelephonyManager;
    .restart local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    :goto_1b9
    if-eqz v15, :cond_1c9

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1c9

    .line 974
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 975
    :cond_1c9
    if-eqz v9, :cond_1d9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1d9

    .line 976
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 978
    :cond_1d9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 979
    .local v4, "idTypes":[I
    const/16 v16, 0x0

    move-object/from16 v18, v8

    move/from16 v8, v16

    .local v8, "i":I
    .local v18, "serial":Ljava/lang/String;
    :goto_1e5
    move-object/from16 v16, v9

    .end local v9    # "meid":Ljava/lang/String;
    .local v16, "meid":Ljava/lang/String;
    array-length v9, v4

    if-ge v8, v9, :cond_1fb

    .line 980
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v4, v8

    .line 979
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v16

    goto :goto_1e5

    .line 982
    .end local v8    # "i":I
    :cond_1fb
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDevicePropertiesAttestationIncluded(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 983
    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setAttestationIds([I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 985
    .end local v4    # "idTypes":[I
    .end local v5    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "imei":Ljava/lang/String;
    .end local v16    # "meid":Ljava/lang/String;
    .end local v18    # "serial":Ljava/lang/String;
    .end local v28    # "telephonyService":Landroid/telephony/TelephonyManager;
    :cond_202
    const/4 v4, 0x4

    if-ne v2, v4, :cond_209

    .line 986
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setIsStrongBoxBacked(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    .line 988
    :cond_209
    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v4

    .line 989
    .end local v10    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .local v4, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v5, "RSA"

    invoke-static {v5, v7}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v5

    .line 990
    .end local v11    # "kpGenerator":Ljava/security/KeyPairGenerator;
    .local v5, "kpGenerator":Ljava/security/KeyPairGenerator;
    invoke-virtual {v5, v4}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 991
    invoke-virtual {v5}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    .line 994
    invoke-virtual {v14, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v3

    .line 995
    .local v3, "gakRsaCertChain":[Ljava/security/cert/Certificate;
    invoke-direct {v1, v3}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains([Ljava/security/cert/Certificate;)Z

    move-result v7
    :try_end_221
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/NoSuchProviderException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/KeyStoreException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/cert/CertificateException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/ProviderException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/lang/NullPointerException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/SignatureException; {:try_start_130 .. :try_end_221} :catch_24c
    .catch Ljava/security/InvalidKeyException; {:try_start_130 .. :try_end_221} :catch_24c

    move v8, v7

    .line 996
    .end local v12    # "ret":Z
    .local v8, "ret":Z
    if-nez v8, :cond_227

    .line 997
    const/16 v7, -0x2cf6

    return v7

    .line 1000
    :cond_227
    const/4 v7, 0x0

    :try_start_228
    aget-object v9, v3, v7

    check-cast v9, Ljava/security/cert/X509Certificate;

    move-object v7, v9

    .line 1001
    .local v7, "appRsaCert":Ljava/security/cert/X509Certificate;
    const/4 v9, 0x1

    aget-object v10, v3, v9

    check-cast v10, Ljava/security/cert/X509Certificate;

    move-object v9, v10

    .line 1002
    .local v9, "gakRsaCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 1005
    array-length v10, v3

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v10, v3, v10

    invoke-direct {v1, v10, v2}, Lcom/android/server/DevRootKeyATCmd;->isEqualsRootPubKey(Ljava/security/cert/Certificate;I)Z

    move-result v10
    :try_end_243
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/NoSuchProviderException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/KeyStoreException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/cert/CertificateException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/io/IOException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/ProviderException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/lang/IllegalArgumentException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/lang/NullPointerException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/SignatureException; {:try_start_228 .. :try_end_243} :catch_249
    .catch Ljava/security/InvalidKeyException; {:try_start_228 .. :try_end_243} :catch_249

    if-nez v10, :cond_246

    .line 1006
    return v24

    .line 1014
    .end local v3    # "gakRsaCertChain":[Ljava/security/cert/Certificate;
    .end local v7    # "appRsaCert":Ljava/security/cert/X509Certificate;
    .end local v9    # "gakRsaCert":Ljava/security/cert/X509Certificate;
    .end local v13    # "appEcCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "keyStore":Ljava/security/KeyStore;
    .end local v17    # "gakEcCert":Ljava/security/cert/X509Certificate;
    .end local v27    # "gakEcCertChain":[Ljava/security/cert/Certificate;
    :cond_246
    nop

    .line 1016
    const/4 v3, 0x0

    return v3

    .line 1008
    .end local v4    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v5    # "kpGenerator":Ljava/security/KeyPairGenerator;
    .end local v6    # "builder":Landroid/security/keystore/KeyGenParameterSpec$Builder;
    :catch_249
    move-exception v0

    move-object v3, v0

    goto :goto_26e

    .end local v8    # "ret":Z
    .restart local v12    # "ret":Z
    :catch_24c
    move-exception v0

    move-object v3, v0

    move v8, v12

    goto :goto_26e

    .end local v12    # "ret":Z
    .local v17, "ret":Z
    :catch_250
    move-exception v0

    move-object v3, v0

    move/from16 v8, v17

    goto :goto_26e

    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v9, "GAK_EC_ALIAS":Ljava/lang/String;
    .local v10, "GAK_EC_CHALLENGE":Ljava/lang/String;
    .local v11, "GAK_RSA_ALIAS":Ljava/lang/String;
    .local v12, "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_255
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object v3, v0

    move/from16 v8, v17

    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    goto :goto_26e

    .end local v17    # "ret":Z
    .end local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .end local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v8    # "ret":Z
    .restart local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .restart local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    :catch_262
    move-exception v0

    move/from16 v17, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    move-object/from16 v26, v11

    move-object/from16 v22, v12

    move-object v3, v0

    .line 1012
    .end local v9    # "GAK_EC_ALIAS":Ljava/lang/String;
    .end local v10    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .end local v11    # "GAK_RSA_ALIAS":Ljava/lang/String;
    .end local v12    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v22    # "GAK_RSA_CHALLENGE":Ljava/lang/String;
    .restart local v23    # "GAK_EC_ALIAS":Ljava/lang/String;
    .restart local v25    # "GAK_EC_CHALLENGE":Ljava/lang/String;
    .restart local v26    # "GAK_RSA_ALIAS":Ljava/lang/String;
    :goto_26e
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1013
    const/16 v4, -0x2cf6

    return v4
.end method

.method private blacklist verifyCertChains(Ljava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1038
    .local p1, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1039
    .local v1, "len":I
    const-string v2, "DEVROOT#ATCmd(1.0.0)"

    const/4 v3, 0x0

    if-nez v1, :cond_11

    .line 1040
    const-string v4, "certification chain size is invalid"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v3

    .line 1044
    :cond_11
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1045
    .local v4, "rootCert":Ljava/security/cert/X509Certificate;
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1046
    .local v5, "finalCert":Ljava/security/cert/X509Certificate;
    new-instance v6, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v6, v0}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    .line 1047
    .local v6, "ccsp":Ljava/security/cert/CollectionCertStoreParameters;
    const-string v7, "Collection"

    invoke-static {v7, v6}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v7

    .line 1051
    .local v7, "store":Ljava/security/cert/CertStore;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 1052
    .local v8, "validDate":Ljava/util/Calendar;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1053
    const/4 v9, 0x5

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->add(II)V

    .line 1056
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1057
    .local v9, "certchain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_40
    add-int/lit8 v11, v1, -0x1

    if-ge v10, v11, :cond_50

    .line 1058
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1057
    add-int/lit8 v10, v10, 0x1

    goto :goto_40

    .line 1061
    .end local v10    # "i":I
    :cond_50
    const-string v10, "X.509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v10

    .line 1062
    .local v10, "cp":Ljava/security/cert/CertPath;
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1063
    .local v11, "trust":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    new-instance v12, Ljava/security/cert/TrustAnchor;

    const/4 v13, 0x0

    invoke-direct {v12, v4, v13}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1064
    const-string v12, "PKIX"

    invoke-static {v12}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v12

    .line 1065
    .local v12, "cpv":Ljava/security/cert/CertPathValidator;
    new-instance v13, Ljava/security/cert/PKIXParameters;

    invoke-direct {v13, v11}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 1066
    .local v13, "param":Ljava/security/cert/PKIXParameters;
    invoke-virtual {v13, v7}, Ljava/security/cert/PKIXParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 1067
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/security/cert/PKIXParameters;->setDate(Ljava/util/Date;)V

    .line 1068
    invoke-virtual {v13, v3}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 1069
    invoke-virtual {v12, v10, v13}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v14

    check-cast v14, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 1070
    .local v14, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    invoke-virtual {v14}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v15

    .line 1072
    .local v15, "subjectPublicKey":Ljava/security/PublicKey;
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    .line 1073
    const-string/jumbo v3, "wrong public key returned"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    const/4 v2, 0x0

    return v2

    .line 1076
    :cond_9c
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist verifyCertChains([Ljava/security/cert/Certificate;)Z
    .registers 7
    .param p1, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1022
    const/4 v0, 0x1

    .line 1023
    .local v0, "finalIdx":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v1, "x509Certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    array-length v2, p1

    .line 1026
    .local v2, "len":I
    move v3, v0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_14

    .line 1027
    aget-object v4, p1, v3

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1028
    .local v4, "x509Cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1026
    .end local v4    # "x509Cert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1031
    .end local v3    # "i":I
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/server/DevRootKeyATCmd;->verifyCertChains(Ljava/util/List;)Z

    move-result v3

    return v3
.end method


# virtual methods
.method public blacklist generateCertWithTlv(Z)Ljava/lang/String;
    .registers 9
    .param p1, "tlv"    # Z

    .line 651
    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_4e

    .line 654
    .local v1, "tlvTestExponent":[B
    new-array v0, v0, [B

    fill-array-data v0, :array_54

    .line 657
    .local v0, "tlvTestKeyUsage":[B
    const/16 v2, 0x32

    new-array v2, v2, [B

    fill-array-data v2, :array_5a

    .line 664
    .local v2, "tlvTestSubjectAlterName":[B
    const/16 v3, 0xb

    new-array v3, v3, [B

    fill-array-data v3, :array_78

    .line 666
    .local v3, "tlbTestHashAlgo":[B
    const/4 v4, 0x1

    if-eqz p1, :cond_3a

    .line 667
    new-instance v5, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v5}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 668
    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 669
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x5

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 670
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/16 v6, 0x1d

    invoke-virtual {v5, v6, v2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    .line 671
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    const/4 v6, 0x3

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlv(I[B)Z

    goto :goto_3d

    .line 673
    :cond_3a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 676
    :goto_3d
    iget-object v5, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    iget-object v6, p0, Lcom/android/server/DevRootKeyATCmd;->mTlv:Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B

    move-result-object v4

    .line 679
    .local v4, "serviceCert":[B
    if-eqz v4, :cond_4a

    .line 680
    const-string v5, "OK"

    return-object v5

    .line 682
    :cond_4a
    const-string v5, "NG_FAIL"

    return-object v5

    nop

    :array_4e
    .array-data 1
        0x2t
        0x2t
        0x1et
        -0x11t
    .end array-data

    :array_54
    .array-data 1
        0x3t
        0x2t
        0x2t
        -0x4t
    .end array-data

    :array_5a
    .array-data 1
        0x30t
        0x30t
        -0x7at
        0x2et
        0x54t
        0x68t
        0x69t
        0x73t
        0x20t
        0x69t
        0x73t
        0x20t
        0x73t
        0x75t
        0x62t
        0x6at
        0x65t
        0x63t
        0x74t
        0x20t
        0x61t
        0x6ct
        0x74t
        0x65t
        0x72t
        0x6et
        0x61t
        0x74t
        0x69t
        0x76t
        0x65t
        0x20t
        0x6et
        0x61t
        0x6dt
        0x65t
        0x20t
        0x66t
        0x69t
        0x65t
        0x6ct
        0x64t
        0x20t
        0x74t
        0x65t
        0x73t
        0x74t
        0x2et
        0x2dt
        0x5ft
    .end array-data

    nop

    :array_78
    .array-data 1
        0x6t
        0x9t
        0x2at
        -0x7at
        0x48t
        -0x7at
        -0x9t
        0xdt
        0x1t
        0x1t
        0x5t
    .end array-data
.end method

.method public blacklist getCmd()Ljava/lang/String;
    .registers 2

    .line 318
    const-string v0, "DEVROOTK"

    return-object v0
.end method

.method public blacklist processCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 21
    .param p1, "cmd"    # Ljava/lang/String;

    .line 323
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "ProcessCmd ["

    const-string v3, "DEVROOT#ATCmd(1.0.0)"

    const/4 v4, 0x0

    .line 325
    .local v4, "ret":I
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 327
    .local v5, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/DevRootKeyATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, "params":[Ljava/lang/String;
    const-string v7, "NG_FAIL(INVALID_PARAM)"

    if-nez v6, :cond_17

    .line 330
    return-object v7

    .line 333
    :cond_17
    :try_start_17
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] start"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 337
    aget-object v8, v6, v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4e} :catch_73f

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v8, :cond_5e

    :try_start_52
    aget-object v8, v6, v9

    .line 338
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_58} :catch_5b

    if-ne v8, v10, :cond_7a

    goto :goto_5e

    .line 641
    :catch_5b
    move-exception v0

    goto/16 :goto_742

    .line 340
    :cond_5e
    :goto_5e
    :try_start_5e
    aget-object v8, v6, v11

    const-string v12, "0"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_66} :catch_73f

    if-nez v8, :cond_7a

    .line 342
    :try_start_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_79} :catch_5b

    .line 343
    .end local v5    # "result":Ljava/lang/String;
    .local v0, "result":Ljava/lang/String;
    return-object v0

    .line 347
    .end local v0    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_7a
    :try_start_7a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v6, v9

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v12, v6, v10

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_93} :catch_73f

    const-string v13, "01"

    const-string v15, " TB-"

    const-string v14, "NG_FAIL(DATA MISSED) SN-"

    const-string v12, "_"

    const-string v9, "FFF"

    const-string v10, "NG_FAIL"

    const-string v16, "NG_FAIL(NO_TOKEN)"

    const-string v11, "NG_FAIL "

    move/from16 v17, v4

    .end local v4    # "ret":I
    .local v17, "ret":I
    const-string v4, "OK"

    packed-switch v8, :pswitch_data_762

    .line 636
    :pswitch_aa
    move-object/from16 v18, v3

    :try_start_ac
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_6e8

    .line 591
    :pswitch_b0
    const/4 v8, 0x2

    aget-object v10, v6, v8

    move-object/from16 v18, v3

    const/4 v3, 0x5

    invoke-virtual {v10, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 593
    .local v3, "strSequenceNo":Ljava/lang/String;
    aget-object v10, v6, v8

    const/4 v2, 0x0

    invoke-virtual {v10, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_dd

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 596
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 600
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_dd
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ea

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_ee

    .line 603
    .end local v2    # "sequenceNo":I
    :cond_ea
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 605
    .restart local v2    # "sequenceNo":I
    :goto_ee
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v7, v6, v7

    .line 606
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 605
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 606
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 605
    invoke-direct {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_135

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    .end local v5    # "result":Ljava/lang/String;
    .local v4, "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 612
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_135
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18b

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v9, v6, v8

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x1a

    if-ne v7, v8, :cond_164

    .line 616
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v7

    .end local v17    # "ret":I
    .local v7, "ret":I
    goto :goto_16d

    .line 620
    .end local v7    # "ret":I
    .restart local v17    # "ret":I
    :cond_164
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v7
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_16d} :catch_6e2

    .line 623
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :goto_16d
    :try_start_16d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 626
    if-eqz v7, :cond_18d

    .line 628
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 629
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_71c

    .line 612
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_18b
    move/from16 v7, v17

    .line 632
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_18d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_19e} :catch_3a8

    .line 633
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_71c

    .line 551
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_1a2
    move-object/from16 v18, v3

    const/4 v2, 0x2

    :try_start_1a5
    aget-object v3, v6, v2

    const/4 v8, 0x5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 553
    .restart local v3    # "strSequenceNo":Ljava/lang/String;
    aget-object v8, v6, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cf

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 556
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 560
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_1cf
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1dc

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_1e0

    .line 563
    .end local v2    # "sequenceNo":I
    :cond_1dc
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 565
    .restart local v2    # "sequenceNo":I
    :goto_1e0
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v7, v6, v7

    .line 566
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 565
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 566
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 565
    invoke-direct {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_227

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 572
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_227
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_254

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x3

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v7
    :try_end_236
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_236} :catch_6e2

    .line 577
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :try_start_236
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 580
    if-eqz v7, :cond_256

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 583
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_71c

    .line 572
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_254
    move/from16 v7, v17

    .line 586
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_256
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_267
    .catch Ljava/lang/Exception; {:try_start_236 .. :try_end_267} :catch_3a8

    .line 587
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_71c

    .line 534
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_26b
    move-object/from16 v18, v3

    const/4 v2, 0x2

    :try_start_26e
    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_28e

    .line 536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 537
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 540
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_28e
    const/4 v2, 0x2

    aget-object v3, v6, v2

    .line 541
    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v2, v6, v2

    .line 542
    const/16 v7, 0x11

    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 540
    const/4 v4, 0x3

    invoke-direct {v1, v4, v3, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 544
    .local v2, "retBytes":[B
    if-eqz v2, :cond_2c2

    .line 545
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 547
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_2c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 491
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_2d8
    move-object/from16 v18, v3

    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/4 v8, 0x5

    invoke-virtual {v3, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "strSequenceNo":Ljava/lang/String;
    aget-object v8, v6, v2

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_305

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 500
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_305
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_312

    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v2

    const/4 v7, 0x1

    add-int/2addr v2, v7

    .local v2, "sequenceNo":I
    goto :goto_316

    .line 503
    .end local v2    # "sequenceNo":I
    :cond_312
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 505
    .restart local v2    # "sequenceNo":I
    :goto_316
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v10, v6, v7

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aget-object v12, v6, v7

    .line 506
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    .line 505
    invoke-virtual {v8, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 506
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 505
    invoke-direct {v1, v2, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_35d

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 509
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 512
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_35d
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_391

    .line 514
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v7

    if-nez v7, :cond_36a

    .line 515
    return-object v16

    .line 518
    :cond_36a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-direct {v1, v8, v7}, Lcom/android/server/DevRootKeyATCmd;->installDeviceBoundCertificate(I[B)I

    move-result v7
    :try_end_373
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_373} :catch_6e2

    .line 521
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :try_start_373
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V

    .line 524
    if-eqz v7, :cond_393

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 527
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_71c

    .line 512
    .end local v4    # "result":Ljava/lang/String;
    .end local v7    # "ret":I
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_391
    move/from16 v7, v17

    .line 530
    .end local v17    # "ret":I
    .restart local v7    # "ret":I
    :cond_393
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_3a4
    .catch Ljava/lang/Exception; {:try_start_373 .. :try_end_3a4} :catch_3a8

    .line 531
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move v4, v7

    goto/16 :goto_71c

    .line 641
    .end local v2    # "sequenceNo":I
    .end local v3    # "strSequenceNo":Ljava/lang/String;
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_3a8
    move-exception v0

    move-object/from16 v2, p1

    move v4, v7

    goto/16 :goto_742

    .line 470
    .end local v7    # "ret":I
    .restart local v17    # "ret":I
    :pswitch_3ae
    move-object/from16 v18, v3

    :try_start_3b0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_3b7

    .line 471
    return-object v16

    .line 474
    :cond_3b7
    const/4 v2, 0x2

    aget-object v3, v6, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_3d8

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 477
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 480
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_3d8
    const/4 v2, 0x2

    aget-object v3, v6, v2

    .line 481
    const/16 v4, 0xe

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aget-object v7, v6, v2

    .line 482
    const/16 v8, 0x11

    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->generateCertificateSigningRequest(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 484
    .local v2, "retBytes":[B
    if-eqz v2, :cond_40b

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 487
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_40b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 488
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 437
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_421
    move-object/from16 v18, v3

    const/4 v2, 0x2

    aget-object v3, v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 440
    .local v2, "strSequenceNo":Ljava/lang/String;
    const-string v3, "FF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47b

    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v3

    if-nez v3, :cond_43b

    .line 443
    return-object v16

    .line 446
    :cond_43b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getTotalKeyBlob()[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-direct {v1, v7, v3}, Lcom/android/server/DevRootKeyATCmd;->installDeviceUnboundKey(I[B)I

    move-result v3
    :try_end_444
    .catch Ljava/lang/Exception; {:try_start_3b0 .. :try_end_444} :catch_6e2

    .line 449
    .end local v17    # "ret":I
    .local v3, "ret":I
    if-nez v3, :cond_459

    .line 450
    :try_start_446
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_46f

    .line 452
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_459
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 455
    :goto_46f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->initTlvKeyBlob()V
    :try_end_472
    .catch Ljava/lang/Exception; {:try_start_446 .. :try_end_472} :catch_475

    move v4, v3

    goto/16 :goto_71c

    .line 641
    .end local v2    # "strSequenceNo":Ljava/lang/String;
    :catch_475
    move-exception v0

    move-object/from16 v2, p1

    move v4, v3

    goto/16 :goto_742

    .line 459
    .end local v3    # "ret":I
    .restart local v2    # "strSequenceNo":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_47b
    :try_start_47b
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 461
    .local v3, "sequenceNo":I
    const/4 v7, 0x2

    aget-object v8, v6, v7

    aget-object v9, v6, v7

    invoke-virtual {v9, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    aget-object v7, v6, v7

    .line 462
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 461
    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 462
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 461
    invoke-direct {v1, v3, v7}, Lcom/android/server/DevRootKeyATCmd;->appendKeyBlob(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b4

    .line 463
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 465
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_4b4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->getKeyBlobIndex()I

    move-result v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    move-object v5, v4

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 429
    .end local v2    # "strSequenceNo":Ljava/lang/String;
    .end local v3    # "sequenceNo":I
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_4dc
    move-object/from16 v18, v3

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->readKeyInfo(I)[B

    move-result-object v2

    .line 430
    .local v2, "retBytes":[B
    if-eqz v2, :cond_500

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 433
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_500
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 418
    .end local v2    # "retBytes":[B
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_516
    move-object/from16 v18, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_51f

    .line 419
    return-object v16

    .line 422
    :cond_51f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_53b

    .line 423
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 425
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_53b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 406
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_551
    move-object/from16 v18, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_55a

    .line 407
    return-object v16

    .line 409
    :cond_55a
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->readDrkUID(I)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, "Uid":Ljava/lang/String;
    if-eqz v2, :cond_577

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 414
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move-object v5, v3

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 398
    .end local v2    # "Uid":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_58d
    move-object/from16 v18, v3

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v2
    :try_end_594
    .catch Ljava/lang/Exception; {:try_start_47b .. :try_end_594} :catch_6e2

    .line 399
    .end local v17    # "ret":I
    .local v2, "ret":I
    if-nez v2, :cond_5ab

    .line 400
    :try_start_596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 402
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5ab
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5c0
    .catch Ljava/lang/Exception; {:try_start_596 .. :try_end_5c0} :catch_632

    .line 403
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_71c

    .line 390
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_5c4
    move-object/from16 v18, v3

    const/4 v2, 0x1

    :try_start_5c7
    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->checkKeyValidity(I)I

    move-result v2
    :try_end_5cb
    .catch Ljava/lang/Exception; {:try_start_5c7 .. :try_end_5cb} :catch_6e2

    .line 391
    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    if-nez v2, :cond_5e2

    .line 392
    :try_start_5cd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 394
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_5e2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_5f7
    .catch Ljava/lang/Exception; {:try_start_5cd .. :try_end_5f7} :catch_632

    .line 395
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_71c

    .line 382
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :pswitch_5fb
    move-object/from16 v18, v3

    const/4 v2, 0x3

    :try_start_5fe
    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->validateDeviceKey(I)I

    move-result v2
    :try_end_602
    .catch Ljava/lang/Exception; {:try_start_5fe .. :try_end_602} :catch_6e2

    .line 383
    .end local v17    # "ret":I
    .restart local v2    # "ret":I
    if-nez v2, :cond_619

    .line 384
    :try_start_604
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 386
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_62e
    .catch Ljava/lang/Exception; {:try_start_604 .. :try_end_62e} :catch_632

    .line 387
    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    move v4, v2

    move-object v5, v3

    goto/16 :goto_71c

    .line 641
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_632
    move-exception v0

    move v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_742

    .line 378
    .end local v2    # "ret":I
    .restart local v17    # "ret":I
    :pswitch_638
    move-object/from16 v18, v3

    :try_start_63a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OK(NOT SUPPORT PMK IN M OS)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto/16 :goto_71c

    .line 351
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :pswitch_652
    move-object/from16 v18, v3

    const-string v2, "factory"

    const-string/jumbo v3, "ro.factory.factory_binary"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_698

    .line 352
    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;->isExistDRK(I)I

    move-result v2
    :try_end_668
    .catch Ljava/lang/Exception; {:try_start_63a .. :try_end_668} :catch_6e2

    .line 353
    .end local v17    # "ret":I
    .local v2, "ret":I
    if-nez v2, :cond_67f

    .line 354
    :try_start_66a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 356
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_67f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_694
    .catch Ljava/lang/Exception; {:try_start_66a .. :try_end_694} :catch_632

    move v4, v2

    move-object v5, v3

    .end local v5    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_71c

    .line 358
    .end local v2    # "ret":I
    .end local v3    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v17    # "ret":I
    :cond_698
    :try_start_698
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DevRootKeyATCmd;->isValidEM()Z

    move-result v2

    if-nez v2, :cond_69f

    .line 359
    return-object v16

    .line 362
    :cond_69f
    iget-object v2, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_6a6

    .line 363
    const-string v0, "NG_FAIL(INSTANCE ERROR)"

    return-object v0

    .line 365
    :cond_6a6
    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_6af

    .line 366
    const-string v0, "NG_FAIL(FAILED CONNECTION)"

    return-object v0

    .line 368
    :cond_6af
    iget-object v2, v1, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-eqz v2, :cond_6cd

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move/from16 v4, v17

    .end local v5    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    goto :goto_71c

    .line 371
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :cond_6cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .end local v5    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    move-object v5, v2

    move/from16 v4, v17

    goto :goto_71c

    .line 641
    .end local v2    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    :catch_6e2
    move-exception v0

    move-object/from16 v2, p1

    move/from16 v4, v17

    goto :goto_742

    .line 636
    :goto_6e8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v6, v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/DevRootKeyATCmd;->processTestCmd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_719
    .catch Ljava/lang/Exception; {:try_start_698 .. :try_end_719} :catch_6e2

    move-object v5, v2

    move/from16 v4, v17

    .line 639
    .end local v17    # "ret":I
    .local v4, "ret":I
    :goto_71c
    :try_start_71c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0
    :try_end_725
    .catch Ljava/lang/Exception; {:try_start_71c .. :try_end_725} :catch_73b

    move-object/from16 v2, p1

    :try_start_727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] end"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73a
    .catch Ljava/lang/Exception; {:try_start_727 .. :try_end_73a} :catch_5b

    .line 645
    goto :goto_760

    .line 641
    :catch_73b
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_742

    :catch_73f
    move-exception v0

    move/from16 v17, v4

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    :goto_742
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 644
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 646
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_760
    return-object v5

    nop

    :pswitch_data_762
    .packed-switch 0x0
        :pswitch_652
        :pswitch_638
        :pswitch_652
        :pswitch_5fb
        :pswitch_5c4
        :pswitch_58d
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_551
        :pswitch_638
        :pswitch_516
        :pswitch_4dc
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_421
        :pswitch_638
        :pswitch_3ae
        :pswitch_2d8
        :pswitch_26b
        :pswitch_1a2
        :pswitch_b0
        :pswitch_b0
    .end packed-switch
.end method

.method public blacklist processTestCmd(ILjava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "cmd"    # I
    .param p2, "subData"    # Ljava/lang/String;

    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, "tmpResult":[B
    const/4 v1, 0x0

    .line 691
    .local v1, "tmpStrResult":Ljava/lang/String;
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 692
    const-string v2, "NG_FAIL(UNIMPLEMENTED_CMD)"

    return-object v2

    .line 695
    :cond_f
    iget-object v2, p0, Lcom/android/server/DevRootKeyATCmd;->mDeviceRootKeyServiceManager:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    if-nez v2, :cond_16

    .line 696
    const-string v2, "NG_FAIL(INSTANCE ERROR)"

    return-object v2

    .line 700
    :cond_16
    const/4 v3, 0x1

    const-string v4, "NG_FAIL"

    const-string v5, "OK"

    packed-switch p1, :pswitch_data_92

    .line 750
    :try_start_1e
    const-string v2, "NG_FAIL(INVALID_PARAM)"

    goto/16 :goto_75

    .line 743
    :pswitch_22
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    move-result-object v2

    .line 744
    .local v2, "dInfo":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    if-nez v2, :cond_2d

    .line 745
    move-object v3, v4

    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_76

    .line 747
    .end local v3    # "result":Ljava/lang/String;
    :cond_2d
    move-object v3, v5

    .line 748
    .restart local v3    # "result":Ljava/lang/String;
    goto/16 :goto_76

    .line 740
    .end local v2    # "dInfo":Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_30
    invoke-virtual {p0, v3}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 741
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 737
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_36
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/DevRootKeyATCmd;->generateCertWithTlv(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 738
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 728
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_3d
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyCertificate(I)[B

    move-result-object v2

    move-object v0, v2

    .line 731
    if-nez v0, :cond_46

    .line 732
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 734
    .end local v3    # "result":Ljava/lang/String;
    :cond_46
    move-object v3, v5

    .line 735
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 720
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_48
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDeviceRootKeyUID(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 722
    if-nez v1, :cond_51

    .line 723
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 725
    .end local v3    # "result":Ljava/lang/String;
    :cond_51
    move-object v3, v5

    .line 726
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 714
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_53
    invoke-virtual {v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isExistDeviceRootKey(I)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 715
    move-object v3, v4

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 717
    .end local v3    # "result":Ljava/lang/String;
    :cond_5b
    move-object v3, v5

    .line 718
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 708
    .end local v3    # "result":Ljava/lang/String;
    :pswitch_5d
    invoke-direct {p0}, Lcom/android/server/DevRootKeyATCmd;->isSupportedDrkV2()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 709
    move-object v3, v5

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 711
    .end local v3    # "result":Ljava/lang/String;
    :cond_65
    move-object v3, v4

    .line 712
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 753
    .end local v3    # "result":Ljava/lang/String;
    :catch_67
    move-exception v2

    goto :goto_77

    .line 702
    :pswitch_69
    invoke-virtual {v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->isAliveDeviceRootKeyService()Z

    move-result v2

    if-nez v2, :cond_73

    .line 703
    const-string v2, "NG_FAIL(FAILED CONNECTION)"
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_71} :catch_67

    move-object v3, v2

    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 705
    .end local v3    # "result":Ljava/lang/String;
    :cond_73
    move-object v3, v5

    .line 706
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_76

    .line 750
    .end local v3    # "result":Ljava/lang/String;
    :goto_75
    move-object v3, v2

    .line 757
    .restart local v3    # "result":Ljava/lang/String;
    :goto_76
    goto :goto_91

    .line 755
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :goto_77
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NG_FAIL(EXCEPTION_OCCURS) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/lang/String;
    :goto_91
    return-object v3

    :pswitch_data_92
    .packed-switch 0x5a
        :pswitch_69
        :pswitch_5d
        :pswitch_53
        :pswitch_48
        :pswitch_3d
        :pswitch_36
        :pswitch_30
        :pswitch_22
    .end packed-switch
.end method

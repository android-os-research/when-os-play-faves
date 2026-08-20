.class public Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
.super Ljava/lang/Object;
.source "AndroidKeystoreAttestationVerificationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;,
        Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    }
.end annotation


# static fields
.field public static final ANDROID_KEYMASTER_KEY_DESCRIPTION_EXTENSION_OID:Ljava/lang/String; = "1.3.6.1.4.1.11129.2.1.17"

.field public static final ATTESTATION_CHALLENGE_INDEX:I = 0x4

.field public static final ATTESTATION_SECURITY_LEVEL_INDEX:I = 0x1

.field public static final ATTESTATION_VERSION_INDEX:I = 0x0

.field public static final HW_AUTH_NONE:I = 0x0

.field public static final HW_ENFORCED_INDEX:I = 0x7

.field public static final KEYMASTER_SECURITY_LEVEL_INDEX:I = 0x3

.field public static final KEYMASTER_UNIQUE_ID_INDEX:I = 0x5

.field public static final KEYMASTER_VERSION_INDEX:I = 0x2

.field public static final KM_SECURITY_LEVEL_SOFTWARE:I = 0x0

.field public static final KM_SECURITY_LEVEL_STRONG_BOX:I = 0x2

.field public static final KM_SECURITY_LEVEL_TRUSTED_ENVIRONMENT:I = 0x1

.field public static final KM_TAG_ALL_APPLICATIONS:I = 0x258

.field public static final KM_TAG_ATTESTATION_APPLICATION_ID:I = 0x2c5

.field public static final KM_TAG_ATTESTATION_ID_BRAND:I = 0x2c6

.field public static final KM_TAG_ATTESTATION_ID_DEVICE:I = 0x2c7

.field public static final KM_TAG_ATTESTATION_ID_PRODUCT:I = 0x2c8

.field public static final KM_TAG_BOOT_PATCHLEVEL:I = 0x2cf

.field public static final KM_TAG_NO_AUTH_REQUIRED:I = 0x1f7

.field public static final KM_TAG_OS_PATCHLEVEL:I = 0x2c2

.field public static final KM_TAG_OS_VERSION:I = 0x2c1

.field public static final KM_TAG_ROOT_OF_TRUST:I = 0x2c0

.field public static final KM_TAG_UNLOCKED_DEVICE_REQUIRED:I = 0x1fd

.field public static final KM_TAG_VENDOR_PATCHLEVEL:I = 0x2ce

.field public static final KM_VERIFIED_BOOT_STATE_FAILED:I = 0x3

.field public static final KM_VERIFIED_BOOT_STATE_SELF_SIGNED:I = 0x1

.field public static final KM_VERIFIED_BOOT_STATE_UNVERIFIED:I = 0x2

.field public static final KM_VERIFIED_BOOT_STATE_VERIFIED:I = 0x0

.field public static final PACKAGE_INFO_NAME_INDEX:I = 0x0

.field public static final PACKAGE_INFO_SET_INDEX:I = 0x0

.field public static final PACKAGE_INFO_VERSION_INDEX:I = 0x1

.field public static final PACKAGE_SIGNATURE_SET_INDEX:I = 0x1

.field public static final SW_ENFORCED_INDEX:I = 0x6

.field public static final VERIFIED_BOOT_HASH_INDEX:I = 0x3

.field public static final VERIFIED_BOOT_KEY_INDEX:I = 0x0

.field public static final VERIFIED_BOOT_LOCKED_INDEX:I = 0x1

.field public static final VERIFIED_BOOT_STATE_INDEX:I = 0x2


# instance fields
.field public mApplicationCertificateDigests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field public mApplicationPackageNameVersion:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

.field public mAttestationHardwareBacked:Z

.field public mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public mAttestationVersion:Ljava/lang/Integer;

.field public mDeviceBrand:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;

.field public mDeviceProductName:Ljava/lang/String;

.field public mKeyAllowedForAllApplications:Z

.field public mKeyAuthenticatorType:Ljava/lang/Integer;

.field public mKeyBootPatchLevel:Ljava/lang/Integer;

.field public mKeyOsPatchLevel:Ljava/lang/Integer;

.field public mKeyOsVersion:Ljava/lang/Integer;

.field public mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

.field public mKeyVendorPatchLevel:Ljava/lang/Integer;

.field public mKeymasterHardwareBacked:Z

.field public mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

.field public mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

.field public mKeymasterVersion:Ljava/lang/Integer;

.field public mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

.field public mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

.field public mVerifiedBootLocked:Ljava/lang/Boolean;

.field public mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    .line 105
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    .line 107
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    .line 108
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 109
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    .line 110
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    .line 111
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    .line 112
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    .line 115
    iput-boolean v1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    .line 116
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    .line 117
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    .line 118
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    .line 119
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    .line 120
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    .line 121
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    .line 122
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    .line 123
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    .line 124
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 125
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 126
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 127
    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    .line 285
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 286
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 285
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    .line 287
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/Certificate;->getTBSCertificate()Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x509/TBSCertificate;->getExtensions()Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;

    move-result-object p1

    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "1.3.6.1.4.1.11129.2.1.17"

    invoke-direct {v0, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/x509/Extensions;->getExtensionParsedValue(Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    if-eqz p1, :cond_1c7

    .line 295
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 296
    invoke-virtual {p0, v2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    .line 298
    sget-object v3, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    if-ne v2, v3, :cond_7c

    move v2, v0

    goto :goto_7d

    :cond_7c
    move v2, v1

    :goto_7d
    iput-boolean v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    const/4 v2, 0x4

    .line 301
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    .line 300
    invoke-virtual {p0, v2}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    const/4 v2, 0x2

    .line 303
    invoke-virtual {p1, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 302
    invoke-virtual {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    const/4 v4, 0x5

    .line 305
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 304
    invoke-virtual {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    const/4 v4, 0x3

    .line 307
    invoke-virtual {p1, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    .line 306
    invoke-virtual {p0, v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    if-ne v5, v3, :cond_b3

    move v3, v0

    goto :goto_b4

    :cond_b3
    move v3, v1

    .line 308
    :goto_b4
    iput-boolean v3, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    const/4 v3, 0x6

    .line 312
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    check-cast v3, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    .line 313
    array-length v5, v3

    move v6, v1

    :goto_c3
    if-ge v6, v5, :cond_f3

    aget-object v7, v3, v6

    .line 314
    check-cast v7, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 315
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v8

    const/16 v9, 0x1fd

    if-eq v8, v9, :cond_e6

    const/16 v9, 0x2c5

    if-eq v8, v9, :cond_d6

    goto :goto_f0

    .line 318
    :cond_d6
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/framework/protobuf/ByteString;->toByteArray()[B

    move-result-object v7

    .line 317
    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->parseAttestationApplicationId([B)V

    goto :goto_f0

    .line 321
    :cond_e6
    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    :goto_f0
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    :cond_f3
    const/4 v3, 0x7

    .line 329
    invoke-virtual {p1, v3}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    .line 330
    array-length v3, p1

    move v5, v1

    :goto_100
    if-ge v5, v3, :cond_1c6

    aget-object v6, p1, v5

    .line 331
    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 332
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    const/16 v8, 0x1f7

    if-eq v7, v8, :cond_1bc

    const/16 v8, 0x258

    if-eq v7, v8, :cond_1b9

    const/16 v8, 0x2ce

    if-eq v7, v8, :cond_1aa

    const/16 v8, 0x2cf

    if-eq v7, v8, :cond_19b

    packed-switch v7, :pswitch_data_1d0

    packed-switch v7, :pswitch_data_1da

    goto/16 :goto_1c2

    .line 368
    :pswitch_122
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    goto/16 :goto_1c2

    .line 365
    :pswitch_12e
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    goto/16 :goto_1c2

    .line 362
    :pswitch_13a
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    goto/16 :goto_1c2

    .line 359
    :pswitch_146
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    goto :goto_1c2

    .line 356
    :pswitch_155
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    goto :goto_1c2

    .line 340
    :pswitch_164
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 342
    invoke-virtual {v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    .line 344
    invoke-virtual {v6, v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    .line 347
    invoke-virtual {v6, v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 346
    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getVerifiedBootStateEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    .line 349
    iget-object v7, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v7, v4, :cond_1c2

    .line 352
    invoke-virtual {v6, v4}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    .line 351
    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    goto :goto_1c2

    .line 374
    :cond_19b
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    goto :goto_1c2

    .line 371
    :cond_1aa
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    goto :goto_1c2

    .line 337
    :cond_1b9
    iput-boolean v0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    goto :goto_1c2

    .line 334
    :cond_1bc
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    :cond_1c2
    :goto_1c2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_100

    :cond_1c6
    return-void

    .line 291
    :cond_1c7
    new-instance p0, Ljava/security/cert/CertificateEncodingException;

    const-string p1, "No attestation extension found in certificate."

    invoke-direct {p0, p1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_1d0
    .packed-switch 0x2c0
        :pswitch_164
        :pswitch_155
        :pswitch_146
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x2c6
        :pswitch_13a
        :pswitch_12e
        :pswitch_122
    .end packed-switch
.end method

.method public static fromCertificate(Ljava/security/cert/X509Certificate;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    new-instance v0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;

    invoke-direct {v0, p0}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;-><init>(Ljava/security/cert/X509Certificate;)V

    return-object v0
.end method


# virtual methods
.method public getApplicationCertificateDigests()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 280
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationPackageNameVersion()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 275
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAttestationChallenge()Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationChallenge:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method public getAttestationSecurityLevel()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .registers 1

    .line 160
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0
.end method

.method public getAttestationVersion()I
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getBoolFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/Boolean;
    .registers 2

    .line 463
    instance-of p0, p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    if-eqz p0, :cond_f

    .line 464
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDeviceBrand()Ljava/lang/String;
    .registers 1

    .line 192
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceBrand:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 1

    .line 197
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceProductName()Ljava/lang/String;
    .registers 1

    .line 202
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mDeviceProductName:Ljava/lang/String;

    return-object p0
.end method

.method public final getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 2

    .line 458
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    return p0
.end method

.method public final getIntegerFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I
    .registers 2

    .line 448
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValueExact()I

    move-result p0

    return p0
.end method

.method public getKeyAuthenticatorType()I
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAuthenticatorType:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 213
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 211
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyAuthenticatorType is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyBootPatchLevel()I
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyBootPatchLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 220
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 218
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyBootPatchLevel is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyOsPatchLevel()I
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsPatchLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 227
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 225
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyOsPatchLevel is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyOsVersion()I
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyOsVersion:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 241
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 239
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyOsVersion is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeyVendorPatchLevel()I
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyVendorPatchLevel:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 234
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 232
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyVendorPatchLevel is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getKeymasterSecurityLevel()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .registers 1

    .line 173
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterSecurityLevel:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0
.end method

.method public getKeymasterUniqueId()Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterUniqueId:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method public getKeymasterVersion()I
    .registers 1

    .line 168
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterVersion:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getLongFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)J
    .registers 2

    .line 453
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValueExact()J

    move-result-wide p0

    return-wide p0
.end method

.method public final getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;
    .registers 2

    .line 438
    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/framework/protobuf/ByteString;->copyFrom([B)Lcom/android/framework/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public final getSecurityLevelEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;
    .registers 2

    .line 423
    invoke-virtual {p0, p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p1, 0x1

    if-eq p0, p1, :cond_17

    const/4 p1, 0x2

    if-ne p0, p1, :cond_f

    .line 430
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->STRONG_BOX:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0

    .line 432
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid security level."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :cond_17
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->TRUSTED_ENVIRONMENT:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0

    .line 426
    :cond_1a
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;->SOFTWARE:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$SecurityLevel;

    return-object p0
.end method

.method public final getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;
    .registers 3

    .line 443
    new-instance p0, Ljava/lang/String;

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0
.end method

.method public getVerifiedBootHash()Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootHash:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method public getVerifiedBootKey()Lcom/android/framework/protobuf/ByteString;
    .registers 1

    .line 258
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootKey:Lcom/android/framework/protobuf/ByteString;

    return-object p0
.end method

.method public getVerifiedBootState()Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootState:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0
.end method

.method public final getVerifiedBootStateEnum(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;
    .registers 2

    .line 407
    invoke-virtual {p0, p1}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getEnumFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)I

    move-result p0

    if-eqz p0, :cond_20

    const/4 p1, 0x1

    if-eq p0, p1, :cond_1d

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1a

    const/4 p1, 0x3

    if-ne p0, p1, :cond_12

    .line 416
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->FAILED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0

    .line 418
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid verified boot state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 414
    :cond_1a
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->UNVERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0

    .line 412
    :cond_1d
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->SELF_SIGNED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0

    .line 410
    :cond_20
    sget-object p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;->VERIFIED:Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes$VerifiedBootState;

    return-object p0
.end method

.method public isAttestationHardwareBacked()Z
    .registers 1

    .line 164
    iget-boolean p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mAttestationHardwareBacked:Z

    return p0
.end method

.method public isKeyAllowedForAllApplications()Z
    .registers 1

    .line 206
    iget-boolean p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyAllowedForAllApplications:Z

    return p0
.end method

.method public isKeyRequiresUnlockedDevice()Z
    .registers 2

    .line 245
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeyRequiresUnlockedDevice:Ljava/lang/Boolean;

    if-eqz p0, :cond_9

    .line 248
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 246
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "KeyRequiresUnlockedDevice is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isKeymasterHardwareBacked()Z
    .registers 1

    .line 177
    iget-boolean p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mKeymasterHardwareBacked:Z

    return p0
.end method

.method public isVerifiedBootLocked()Z
    .registers 2

    .line 262
    iget-object p0, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mVerifiedBootLocked:Ljava/lang/Boolean;

    if-eqz p0, :cond_9

    .line 265
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 263
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VerifiedBootLocked is not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final parseAttestationApplicationId([B)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 385
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    .line 384
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    .line 386
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 387
    invoke-virtual {p1, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 388
    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_1f
    const/4 v5, 0x1

    if-ge v4, v3, :cond_40

    aget-object v6, v2, v4

    .line 389
    check-cast v6, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 392
    invoke-virtual {v6, v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    .line 391
    invoke-virtual {p0, v7}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getUtf8FromOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-virtual {v6, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getLongFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 390
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 395
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 397
    invoke-virtual {p1, v5}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;

    .line 398
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Set;->toArray()[Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    array-length v3, p1

    :goto_50
    if-ge v1, v3, :cond_5e

    aget-object v4, p1, v1

    .line 399
    invoke-virtual {p0, v4}, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->getOctetsFromAsn1(Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 401
    :cond_5e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationPackageNameVersion:Ljava/util/Map;

    .line 402
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/security/AndroidKeystoreAttestationVerificationAttributes;->mApplicationCertificateDigests:Ljava/util/List;

    return-void
.end method

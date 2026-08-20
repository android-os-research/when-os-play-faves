.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSchema.java"


# static fields
.field public static final CERTIFICATE_FACTORY_TYPE:Ljava/lang/String; = "X.509"

.field public static final CERT_PATH_ENCODING:Ljava/lang/String; = "PkiPath"

.field public static final NAMESPACE:Ljava/lang/String; = null

.field public static final TAG_ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final TAG_ALIAS:Ljava/lang/String; = "alias"

.field public static final TAG_APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field public static final TAG_APPLICATION_KEYS:Ljava/lang/String; = "applicationKeysList"

.field public static final TAG_BACKEND_PUBLIC_KEY:Ljava/lang/String; = "backendPublicKey"

.field public static final TAG_COUNTER_ID:Ljava/lang/String; = "counterId"

.field public static final TAG_KEY_CHAIN_PROTECTION_PARAMS:Ljava/lang/String; = "keyChainProtectionParams"

.field public static final TAG_KEY_CHAIN_PROTECTION_PARAMS_LIST:Ljava/lang/String; = "keyChainProtectionParamsList"

.field public static final TAG_KEY_CHAIN_SNAPSHOT:Ljava/lang/String; = "keyChainSnapshot"

.field public static final TAG_KEY_DERIVATION_PARAMS:Ljava/lang/String; = "keyDerivationParams"

.field public static final TAG_KEY_MATERIAL:Ljava/lang/String; = "keyMaterial"

.field public static final TAG_KEY_METADATA:Ljava/lang/String; = "keyMetadata"

.field public static final TAG_LOCK_SCREEN_UI_TYPE:Ljava/lang/String; = "lockScreenUiType"

.field public static final TAG_MAX_ATTEMPTS:Ljava/lang/String; = "maxAttempts"

.field public static final TAG_MEMORY_DIFFICULTY:Ljava/lang/String; = "memoryDifficulty"

.field public static final TAG_RECOVERY_KEY_MATERIAL:Ljava/lang/String; = "recoveryKeyMaterial"

.field public static final TAG_SALT:Ljava/lang/String; = "salt"

.field public static final TAG_SERVER_PARAMS:Ljava/lang/String; = "serverParams"

.field public static final TAG_SNAPSHOT_VERSION:Ljava/lang/String; = "snapshotVersion"

.field public static final TAG_TRUSTED_HARDWARE_CERT_PATH:Ljava/lang/String; = "thmCertPath"

.field public static final TAG_USER_SECRET_TYPE:Ljava/lang/String; = "userSecretType"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

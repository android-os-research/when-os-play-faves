.class public final Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
.super Ljava/lang/Object;
.source "AttestParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/security/keystore/AttestParameterSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

.field private final mChallenge:[B

.field private mDeviceAttestation:Z

.field private mDevicePropertiesAttestationIncluded:Z

.field private mPackageName:Ljava/lang/String;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;

.field private mVerifiableIntegrity:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/security/keystore/AttestParameterSpec;)V
    .registers 4
    .param p1, "sourceSpec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 196
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 198
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 202
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 11
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-string v0, "EC"

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 156
    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 157
    iput-boolean v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 171
    if-eqz p1, :cond_50

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_48

    .line 176
    if-eqz p2, :cond_40

    .line 180
    new-instance v0, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v2, "NONE"

    const-string v3, "SHA-1"

    const-string v4, "SHA-224"

    const-string v5, "SHA-256"

    const-string v6, "SHA-384"

    const-string v7, "SHA-512"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 186
    iput-object p2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    .line 187
    return-void

    .line 177
    :cond_40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "challenge == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "alias must not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_50
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .registers 11

    .line 308
    new-instance v9, Lcom/samsung/android/security/keystore/AttestParameterSpec;

    iget-object v1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mChallenge:[B

    iget-boolean v3, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    iget-boolean v4, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    iget-boolean v5, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    iget-object v6, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iget-object v8, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/security/keystore/AttestParameterSpec;-><init>(Ljava/lang/String;[BZZZLjava/lang/String;Landroid/security/keystore/KeyGenParameterSpec;Ljavax/security/auth/x500/X500Principal;)V

    return-object v9
.end method

.method public setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "algorithm"    # Ljava/lang/String;

    .line 214
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mAlgorithm:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public setCertificateSubject(Ljavax/security/auth/x500/X500Principal;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "subject"    # Ljavax/security/auth/x500/X500Principal;

    .line 299
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mCertificateSubject:Ljavax/security/auth/x500/X500Principal;

    .line 300
    return-object p0
.end method

.method public setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "requested"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDeviceAttestation:Z

    .line 228
    return-object p0
.end method

.method public setDevicePropertiesAttestationIncluded(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "devicePropertiesAttestationIncluded"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mDevicePropertiesAttestationIncluded:Z

    .line 265
    return-object p0
.end method

.method public setKeyGenParameterSpec(Landroid/security/keystore/KeyGenParameterSpec;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "spec"    # Landroid/security/keystore/KeyGenParameterSpec;

    .line 289
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    .line 290
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mPackageName:Ljava/lang/String;

    .line 275
    return-object p0
.end method

.method public setVerifiableIntegrity(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;
    .registers 2
    .param p1, "checked"    # Z

    .line 239
    iput-boolean p1, p0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->mVerifiableIntegrity:Z

    .line 240
    return-object p0
.end method

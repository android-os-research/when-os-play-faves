.class public Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
.super Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;
.source "CertStatus.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/ASN1Choice;


# instance fields
.field private blacklist tagNo:I

.field private blacklist value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 28
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(ILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .param p1, "tagNo"    # I
    .param p2, "value"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 41
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 43
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 44
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V
    .registers 5
    .param p1, "choice"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    .line 48
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 51
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown tag encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :pswitch_2d
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 61
    goto :goto_3f

    .line 57
    :pswitch_32
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 58
    goto :goto_3f

    .line 54
    :pswitch_3a
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/DERNull;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 55
    nop

    .line 65
    :goto_3f
    return-void

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_32
        :pswitch_2d
    .end packed-switch
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;)V
    .registers 3
    .param p1, "info"    # Lcom/android/internal/org/bouncycastle/asn1/ocsp/RevokedInfo;

    .line 33
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1Object;-><init>()V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    .line 35
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    .line 36
    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;Z)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .registers 3
    .param p0, "obj"    # Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;
    .param p1, "explicit"    # Z

    .line 86
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;
    .registers 4
    .param p0, "obj"    # Ljava/lang/Object;

    .line 70
    if-eqz p0, :cond_36

    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    if-eqz v0, :cond_7

    goto :goto_36

    .line 74
    :cond_7
    instance-of v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_14

    .line 76
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    move-object v1, p0

    check-cast v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;-><init>(Lcom/android/internal/org/bouncycastle/asn1/ASN1TaggedObject;)V

    return-object v0

    .line 79
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_36
    :goto_36
    move-object v0, p0

    check-cast v0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;

    return-object v0
.end method


# virtual methods
.method public blacklist getStatus()Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public blacklist getTagNo()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    return v0
.end method

.method public blacklist toASN1Primitive()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;
    .registers 5

    .line 110
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->tagNo:I

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/asn1/ocsp/CertStatus;->value:Lcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/org/bouncycastle/asn1/DERTaggedObject;-><init>(ZILcom/android/internal/org/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

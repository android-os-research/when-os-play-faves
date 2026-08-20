.class public Lcom/samsung/android/knox/sdp/core/SdpDomain;
.super Ljava/lang/Object;
.source "SdpDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final greylist mAlias:Ljava/lang/String;

.field private final greylist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    if-nez p1, :cond_9

    move-object v1, v0

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    iput-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;->mAlias:Ljava/lang/String;

    .line 30
    if-nez p2, :cond_f

    goto :goto_10

    :cond_f
    move-object v0, p2

    :goto_10
    iput-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;->mPackageName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public greylist getAlias()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getPackageName()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SdpDomain { alias : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / pkgName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/sdp/core/SdpDomain;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

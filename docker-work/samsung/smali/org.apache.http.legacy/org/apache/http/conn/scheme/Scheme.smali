.class public final Lorg/apache/http/conn/scheme/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final defaultPort:I

.field private final layered:Z

.field private final name:Ljava/lang/String;

.field private final socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

.field private stringRep:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/http/conn/scheme/SocketFactory;
    .param p3, "port"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-eqz p1, :cond_40

    .line 100
    if-eqz p2, :cond_38

    .line 104
    if-lez p3, :cond_1f

    const v0, 0xffff

    if-gt p3, v0, :cond_1f

    .line 109
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    .line 110
    iput-object p2, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 111
    iput p3, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    .line 112
    instance-of v0, p2, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    iput-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    .line 113
    return-void

    .line 105
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port is invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket factory may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Scheme name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 201
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 202
    :cond_8
    instance-of v2, p1, Lorg/apache/http/conn/scheme/Scheme;

    if-nez v2, :cond_d

    return v0

    .line 204
    :cond_d
    move-object v2, p1

    check-cast v2, Lorg/apache/http/conn/scheme/Scheme;

    .line 205
    .local v2, "s":Lorg/apache/http/conn/scheme/Scheme;
    iget-object v3, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    iget v4, v2, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    iget-boolean v4, v2, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    iget-object v4, v2, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    .line 208
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    move v0, v1

    goto :goto_33

    :cond_32
    nop

    .line 205
    :goto_33
    return v0
.end method

.method public final getDefaultPort()I
    .registers 2

    .line 122
    iget v0, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;
    .registers 2

    .line 134
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 220
    const/16 v0, 0x11

    .line 221
    .local v0, "hash":I
    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(II)I

    move-result v0

    .line 222
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 223
    iget-boolean v1, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(IZ)I

    move-result v0

    .line 224
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 225
    return v0
.end method

.method public final isLayered()Z
    .registers 2

    .line 155
    iget-boolean v0, p0, Lorg/apache/http/conn/scheme/Scheme;->layered:Z

    return v0
.end method

.method public final resolvePort(I)I
    .registers 3
    .param p1, "port"    # I

    .line 169
    if-lez p1, :cond_a

    const v0, 0xffff

    if-le p1, v0, :cond_8

    goto :goto_a

    :cond_8
    move v0, p1

    goto :goto_c

    :cond_a
    :goto_a
    iget v0, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    :goto_c
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 180
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    iget v1, p0, Lorg/apache/http/conn/scheme/Scheme;->defaultPort:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    .line 187
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    :cond_22
    iget-object v0, p0, Lorg/apache/http/conn/scheme/Scheme;->stringRep:Ljava/lang/String;

    return-object v0
.end method

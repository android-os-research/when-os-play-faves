.class public Lorg/apache/http/message/BasicHeaderElement;
.super Ljava/lang/Object;
.source "BasicHeaderElement.java"

# interfaces
.implements Lorg/apache/http/HeaderElement;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:[Lorg/apache/http/NameValuePair;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/http/message/BasicHeaderElement;-><init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Lorg/apache/http/NameValuePair;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/apache/http/NameValuePair;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-eqz p1, :cond_14

    .line 110
    iput-object p1, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    .line 112
    if-eqz p3, :cond_e

    .line 113
    iput-object p3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    goto :goto_13

    .line 115
    :cond_e
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/http/NameValuePair;

    iput-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    .line 117
    :goto_13
    return-void

    .line 108
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 244
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 205
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 206
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 207
    :cond_8
    instance-of v2, p1, Lorg/apache/http/HeaderElement;

    if-eqz v2, :cond_31

    .line 208
    move-object v2, p1

    check-cast v2, Lorg/apache/http/message/BasicHeaderElement;

    .line 209
    .local v2, "that":Lorg/apache/http/message/BasicHeaderElement;
    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    .line 210
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    iget-object v4, v2, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    .line 211
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    move v0, v1

    goto :goto_30

    :cond_2f
    nop

    .line 209
    :goto_30
    return v0

    .line 213
    .end local v2    # "that":Lorg/apache/http/message/BasicHeaderElement;
    :cond_31
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 135
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(I)Lorg/apache/http/NameValuePair;
    .registers 3
    .param p1, "index"    # I

    .line 178
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getParameterByName(Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;

    .line 190
    if-eqz p1, :cond_1b

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "found":Lorg/apache/http/NameValuePair;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    array-length v3, v2

    if-ge v1, v3, :cond_1a

    .line 195
    aget-object v2, v2, v1

    .line 196
    .local v2, "current":Lorg/apache/http/NameValuePair;
    invoke-interface {v2}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 197
    move-object v0, v2

    .line 198
    goto :goto_1a

    .line 194
    .end local v2    # "current":Lorg/apache/http/NameValuePair;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 201
    .end local v1    # "i":I
    :cond_1a
    :goto_1a
    return-object v0

    .line 191
    .end local v0    # "found":Lorg/apache/http/NameValuePair;
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParameterCount()I
    .registers 2

    .line 165
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    array-length v0, v0

    return v0
.end method

.method public getParameters()[Lorg/apache/http/NameValuePair;
    .registers 2

    .line 155
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    invoke-virtual {v0}, [Lorg/apache/http/NameValuePair;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/NameValuePair;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 144
    iget-object v0, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 218
    const/16 v0, 0x11

    .line 219
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 220
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 222
    aget-object v2, v2, v1

    invoke-static {v0, v2}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 224
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 228
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 229
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElement;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 231
    const-string v1, "="

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 232
    iget-object v1, p0, Lorg/apache/http/message/BasicHeaderElement;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 234
    :cond_1a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    .line 235
    const-string v2, "; "

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lorg/apache/http/message/BasicHeaderElement;->parameters:[Lorg/apache/http/NameValuePair;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/Object;)V

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 238
    .end local v1    # "i":I
    :cond_2f
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

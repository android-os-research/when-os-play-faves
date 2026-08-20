.class public Lorg/apache/http/message/BasicNameValuePair;
.super Ljava/lang/Object;
.source "BasicNameValuePair.java"

# interfaces
.implements Lorg/apache/http/NameValuePair;
.implements Ljava/lang/Cloneable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    if-eqz p1, :cond_a

    .line 127
    iput-object p1, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    .line 129
    return-void

    .line 125
    :cond_a
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

    .line 191
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 172
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 173
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 174
    :cond_8
    instance-of v2, p1, Lorg/apache/http/NameValuePair;

    if-eqz v2, :cond_27

    .line 175
    move-object v2, p1

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 176
    .local v2, "that":Lorg/apache/http/message/BasicNameValuePair;
    iget-object v3, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    .line 177
    invoke-static {v3, v4}, Lorg/apache/http/util/LangUtils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    move v0, v1

    goto :goto_26

    :cond_25
    nop

    .line 176
    :goto_26
    return v0

    .line 179
    .end local v2    # "that":Lorg/apache/http/message/BasicNameValuePair;
    :cond_27
    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .line 146
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 184
    const/16 v0, 0x11

    .line 185
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 186
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/util/LangUtils;->hashCode(ILjava/lang/Object;)I

    move-result v0

    .line 187
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 158
    iget-object v0, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 159
    .local v0, "len":I
    iget-object v1, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 161
    :cond_11
    new-instance v1, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v1, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 163
    .local v1, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 165
    const-string v2, "="

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Lorg/apache/http/message/BasicNameValuePair;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 168
    :cond_29
    invoke-virtual {v1}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

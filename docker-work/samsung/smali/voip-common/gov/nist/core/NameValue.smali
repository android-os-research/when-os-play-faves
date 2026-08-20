.class public Lgov/nist/core/NameValue;
.super Lgov/nist/core/GenericObject;
.source "NameValue.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/core/GenericObject;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x19c7fab1bcbf73beL


# instance fields
.field protected final greylist isFlagParameter:Z

.field protected greylist isQuotedString:Z

.field private greylist name:Ljava/lang/String;

.field private greylist quotes:Ljava/lang/String;

.field private greylist separator:Ljava/lang/String;

.field private greylist value:Ljava/lang/Object;


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 63
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 66
    const-string v1, "="

    iput-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 69
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lgov/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 97
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .registers 5
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/Object;
    .param p3, "isFlag"    # Z

    .line 78
    invoke-direct {p0}, Lgov/nist/core/GenericObject;-><init>()V

    .line 82
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 84
    const-string v0, "="

    iput-object v0, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 86
    iput-boolean p3, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    .line 87
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 213
    invoke-super {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/core/NameValue;

    .line 214
    .local v0, "retval":Lgov/nist/core/NameValue;
    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_10

    .line 215
    invoke-static {v1}, Lgov/nist/core/NameValue;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 216
    :cond_10
    return-object v0
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/core/NameValue;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 163
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v0, :cond_ae

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_ae

    iget-boolean v2, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-nez v2, :cond_ae

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 165
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 166
    .local v0, "gv":Lgov/nist/core/GenericObject;
    iget-object v1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    return-object p1

    .line 170
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_34
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 171
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 172
    .local v0, "gvlist":Lgov/nist/core/GenericObjectList;
    iget-object v1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    return-object p1

    .line 174
    .end local v0    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_58
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8c

    .line 180
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v0, :cond_80

    .line 181
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    return-object p1

    .line 184
    :cond_80
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    return-object p1

    .line 188
    :cond_8c
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 189
    return-object p1

    .line 191
    :cond_ae
    if-nez v0, :cond_f4

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_f4

    .line 192
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 193
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObject;

    .line 194
    .local v0, "gv":Lgov/nist/core/GenericObject;
    invoke-virtual {v0, p1}, Lgov/nist/core/GenericObject;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 195
    return-object p1

    .line 196
    .end local v0    # "gv":Lgov/nist/core/GenericObject;
    :cond_c6
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 197
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    check-cast v0, Lgov/nist/core/GenericObjectList;

    .line 198
    .local v0, "gvlist":Lgov/nist/core/GenericObjectList;
    invoke-virtual {v0}, Lgov/nist/core/GenericObjectList;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    return-object p1

    .line 201
    .end local v0    # "gvlist":Lgov/nist/core/GenericObjectList;
    :cond_de
    iget-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    return-object p1

    .line 204
    :cond_f4
    if-eqz v0, :cond_102

    iget-object v1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v1, :cond_fe

    iget-boolean v1, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v1, :cond_102

    .line 205
    :cond_fe
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    return-object p1

    .line 208
    :cond_102
    return-object p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 224
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 225
    return v0

    .line 226
    :cond_13
    move-object v1, p1

    check-cast v1, Lgov/nist/core/NameValue;

    .line 227
    .local v1, "that":Lgov/nist/core/NameValue;
    const/4 v2, 0x1

    if-ne p0, v1, :cond_1a

    .line 228
    return v2

    .line 229
    :cond_1a
    iget-object v3, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v3, :cond_22

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v4, :cond_28

    :cond_22
    if-eqz v3, :cond_29

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-nez v4, :cond_29

    .line 231
    :cond_28
    return v0

    .line 232
    :cond_29
    if-eqz v3, :cond_36

    iget-object v4, v1, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_36

    .line 234
    return v0

    .line 235
    :cond_36
    iget-object v3, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_3e

    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v4, :cond_44

    :cond_3e
    if-nez v3, :cond_45

    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-eqz v4, :cond_45

    .line 237
    :cond_44
    return v0

    .line 238
    :cond_45
    iget-object v4, v1, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-ne v3, v4, :cond_4a

    .line 239
    return v2

    .line 240
    :cond_4a
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_63

    .line 242
    iget-boolean v5, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    if-eqz v5, :cond_57

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 244
    :cond_57
    check-cast v3, Ljava/lang/String;

    .line 245
    .local v3, "val":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 246
    .local v4, "val1":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_62

    move v0, v2

    :cond_62
    return v0

    .line 248
    .end local v3    # "val":Ljava/lang/String;
    .end local v4    # "val1":Ljava/lang/String;
    :cond_63
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api getKey()Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getKey()Ljava/lang/String;
    .registers 2

    .line 257
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api getValue()Ljava/lang/Object;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist getValue()Ljava/lang/String;
    .registers 2

    .line 266
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public greylist getValueAsObject()Ljava/lang/Object;
    .registers 2

    .line 127
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isFlagParameter:Z

    if-eqz v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    :goto_9
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 282
    invoke-virtual {p0}, Lgov/nist/core/NameValue;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist isValueQuoted()Z
    .registers 2

    .line 119
    iget-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    return v0
.end method

.method public greylist setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "n"    # Ljava/lang/String;

    .line 135
    iput-object p1, p0, Lgov/nist/core/NameValue;->name:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public greylist setQuotedValue()V
    .registers 2

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov/nist/core/NameValue;->isQuotedString:Z

    .line 112
    const-string v0, "\""

    iput-object v0, p0, Lgov/nist/core/NameValue;->quotes:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public greylist setSeparator(Ljava/lang/String;)V
    .registers 2
    .param p1, "sep"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lgov/nist/core/NameValue;->separator:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public bridge synthetic whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lgov/nist/core/NameValue;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public greylist setValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move-object v0, p1

    .line 275
    .local v0, "retval":Ljava/lang/String;
    :goto_7
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 276
    return-object v0
.end method

.method public greylist setValueAsObject(Ljava/lang/Object;)V
    .registers 2
    .param p1, "v"    # Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Lgov/nist/core/NameValue;->value:Ljava/lang/Object;

    .line 143
    return-void
.end method

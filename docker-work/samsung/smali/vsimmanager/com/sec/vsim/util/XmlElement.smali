.class public Lcom/sec/vsim/util/XmlElement;
.super Ljava/lang/Object;
.source "XmlElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/util/XmlElement$Attribute;
    }
.end annotation


# instance fields
.field public mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/vsim/util/XmlElement$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public mChildElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/vsim/util/XmlElement;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mNamespace:Ljava/lang/String;

.field public mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lcom/sec/vsim/util/XmlElement;->mName:Ljava/lang/String;

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 106
    invoke-direct {p0, p1}, Lcom/sec/vsim/util/XmlElement;-><init>(Ljava/lang/String;)V

    .line 107
    iput-object p2, p0, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/sec/vsim/util/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object p3, p0, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    .line 113
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/vsim/util/XmlElement;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 142
    if-eqz p2, :cond_c

    .line 143
    iget-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    new-instance v1, Lcom/sec/vsim/util/XmlElement$Attribute;

    invoke-direct {v1, p1, p2}, Lcom/sec/vsim/util/XmlElement$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_c
    return-object p0
.end method

.method public addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/vsim/util/XmlElement;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ns"    # Ljava/lang/String;

    .line 156
    if-eqz p2, :cond_c

    .line 157
    iget-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    new-instance v1, Lcom/sec/vsim/util/XmlElement$Attribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/vsim/util/XmlElement$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_c
    return-object p0
.end method

.method public addChildElement(Lcom/sec/vsim/util/XmlElement;)Lcom/sec/vsim/util/XmlElement;
    .registers 3
    .param p1, "element"    # Lcom/sec/vsim/util/XmlElement;

    .line 167
    iget-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-object p0
.end method

.method public addChildElements(Ljava/util/List;)Lcom/sec/vsim/util/XmlElement;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/vsim/util/XmlElement;",
            ">;)",
            "Lcom/sec/vsim/util/XmlElement;"
        }
    .end annotation

    .line 176
    .local p1, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/sec/vsim/util/XmlElement;>;"
    iget-object v0, p0, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 177
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 203
    return v0

    .line 205
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 206
    return v1

    .line 208
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 209
    return v1

    .line 211
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/sec/vsim/util/XmlElement;

    .line 212
    .local v2, "other":Lcom/sec/vsim/util/XmlElement;
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mName:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 213
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement;->mName:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 214
    return v1

    .line 216
    :cond_1f
    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 217
    return v1

    .line 220
    :cond_28
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    if-nez v3, :cond_31

    .line 221
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    if-eqz v3, :cond_3a

    .line 222
    return v1

    .line 224
    :cond_31
    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 225
    return v1

    .line 228
    :cond_3a
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_43

    .line 229
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    if-eqz v3, :cond_4c

    .line 230
    return v1

    .line 232
    :cond_43
    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 233
    return v1

    .line 236
    :cond_4c
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    if-nez v3, :cond_55

    .line 237
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    if-eqz v3, :cond_5e

    .line 238
    return v1

    .line 240
    :cond_55
    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 241
    return v1

    .line 244
    :cond_5e
    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    if-nez v3, :cond_67

    .line 245
    iget-object v3, v2, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    if-eqz v3, :cond_70

    .line 246
    return v1

    .line 248
    :cond_67
    iget-object v4, v2, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    .line 249
    return v1

    .line 252
    :cond_70
    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 190
    const/16 v0, 0x1f

    .line 191
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 192
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mName:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_c

    move v3, v4

    goto :goto_10

    :cond_c
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_10
    add-int/2addr v2, v3

    .line 193
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    if-nez v3, :cond_19

    move v3, v4

    goto :goto_1d

    :cond_19
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1d
    add-int/2addr v1, v3

    .line 194
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    if-nez v3, :cond_26

    move v3, v4

    goto :goto_2a

    :cond_26
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2a
    add-int/2addr v2, v3

    .line 195
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mAttributes:Ljava/util/List;

    if-nez v3, :cond_33

    move v3, v4

    goto :goto_37

    :cond_33
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_37
    add-int/2addr v1, v3

    .line 196
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/sec/vsim/util/XmlElement;->mChildElements:Ljava/util/List;

    if-nez v3, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_43
    add-int/2addr v2, v4

    .line 197
    .end local v1    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public setNamespace(Ljava/lang/String;)Lcom/sec/vsim/util/XmlElement;
    .registers 2
    .param p1, "ns"    # Ljava/lang/String;

    .line 131
    iput-object p1, p0, Lcom/sec/vsim/util/XmlElement;->mNamespace:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public setParent(Lcom/sec/vsim/util/XmlElement;)Lcom/sec/vsim/util/XmlElement;
    .registers 3
    .param p1, "element"    # Lcom/sec/vsim/util/XmlElement;

    .line 185
    invoke-virtual {p1, p0}, Lcom/sec/vsim/util/XmlElement;->addChildElement(Lcom/sec/vsim/util/XmlElement;)Lcom/sec/vsim/util/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)Lcom/sec/vsim/util/XmlElement;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lcom/sec/vsim/util/XmlElement;->mValue:Ljava/lang/String;

    .line 122
    return-object p0
.end method

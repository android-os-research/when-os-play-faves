.class public Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;
.super Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
.source "SmartClipMetaTagArrayImpl.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SmartClipMetaTagArrayImpl"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 229
    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .registers 3
    .param p1, "tag"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 74
    if-nez p1, :cond_4

    .line 75
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;)V
    .registers 4
    .param p1, "tagArray"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    .line 106
    if-nez p1, :cond_3

    .line 107
    return-void

    .line 110
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 111
    .local v1, "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {p0, v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v1    # "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    goto :goto_7

    .line 113
    :cond_17
    return-void
.end method

.method public blacklist addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z
    .registers 3
    .param p1, "tag"    # Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 95
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->addMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()V
    .registers 10

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    .line 136
    .local v0, "tagCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_69

    .line 137
    invoke-virtual {p0, v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 139
    .local v2, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "value":Ljava/lang/String;
    const-string v5, ""

    .line 143
    .local v5, "extra":Ljava/lang/String;
    if-nez v4, :cond_1b

    .line 144
    const-string v4, "null"

    .line 147
    :cond_1b
    instance-of v6, v2, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    if-eqz v6, :cond_40

    .line 148
    move-object v6, v2

    check-cast v6, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    .line 150
    .local v6, "tagImpl":Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v7

    if-eqz v7, :cond_40

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ", Extra data size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getExtraData()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    .end local v6    # "tagImpl":Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    :cond_40
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SmartClipMetaTagArrayImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v2    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "extra":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 157
    .end local v1    # "i":I
    :cond_69
    return-void
.end method

.method public blacklist getCopy()Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;
    .registers 5

    .line 120
    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 121
    .local v0, "copy":Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v1

    .line 123
    .local v1, "arrayLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_18

    .line 124
    invoke-virtual {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 125
    .local v3, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {v0, v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 123
    .end local v3    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 128
    .end local v2    # "i":I
    :cond_18
    return-object v0
.end method

.method public whitelist getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .registers 9
    .param p1, "tagType"    # Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;-><init>()V

    .line 52
    .local v0, "resultArray":Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v1

    .line 54
    .local v1, "arrayLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_25

    .line 55
    invoke-virtual {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 56
    .local v3, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "curTagType":Ljava/lang/String;
    if-eqz v4, :cond_22

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_22

    .line 58
    invoke-virtual {v0, v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 54
    .end local v3    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v4    # "curTagType":Ljava/lang/String;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 62
    .end local v2    # "i":I
    :cond_25
    return-object v0
.end method

.method public blacklist getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    .registers 3
    .param p1, "tagType"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "tagCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_5d

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, "objId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 209
    .local v3, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    const-string v4, "BasicMetaTag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "SmartClipMetaTagArrayImpl"

    const/4 v6, 0x1

    if-ne v4, v6, :cond_26

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 211
    .local v4, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 212
    .local v6, "value":Ljava/lang/String;
    new-instance v7, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    invoke-direct {v7, v4, v6}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v7

    .line 213
    .end local v4    # "type":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    goto :goto_4e

    :cond_26
    const-string v4, "ParcelableMetaTag"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v6, :cond_37

    .line 214
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    check-cast v3, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    goto :goto_4e

    .line 216
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readFromParcel : Unknown meta tag type!!! : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_4e
    if-nez v3, :cond_57

    .line 220
    const-string/jumbo v4, "readFromParcel : Could not read tag!!"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    goto :goto_5d

    .line 224
    :cond_57
    invoke-virtual {p0, v3}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v2    # "objId":Ljava/lang/String;
    .end local v3    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 226
    .end local v1    # "i":I
    :cond_5d
    :goto_5d
    return-void
.end method

.method public whitelist removeMetaTags(Ljava/lang/String;)I
    .registers 9
    .param p1, "tagType"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    .line 35
    .local v0, "removedCount":I
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v1

    .line 37
    .local v1, "arrayLen":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_24

    .line 38
    invoke-virtual {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 39
    .local v3, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v4

    .line 40
    .local v4, "curTagType":Ljava/lang/String;
    if-eqz v4, :cond_21

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_21

    .line 41
    invoke-virtual {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->remove(I)Ljava/lang/Object;

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 37
    .end local v3    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v4    # "curTagType":Ljava/lang/String;
    :cond_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 45
    .end local v2    # "i":I
    :cond_24
    return v0
.end method

.method public blacklist removeTags(Ljava/lang/String;)I
    .registers 3
    .param p1, "tagType"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->removeMetaTags(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->size()I

    move-result v0

    .line 173
    .local v0, "count":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_37

    .line 177
    invoke-virtual {p0, v1}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 179
    .local v2, "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    instance-of v3, v2, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    if-eqz v3, :cond_21

    .line 180
    move-object v3, v2

    check-cast v3, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    .line 183
    .local v3, "tagImpl":Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    const-string v4, "ParcelableMetaTag"

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    .end local v3    # "tagImpl":Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    goto :goto_34

    .line 189
    :cond_21
    const-string v3, "BasicMetaTag"

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    .end local v2    # "tag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 197
    .end local v1    # "i":I
    :cond_37
    return-void
.end method

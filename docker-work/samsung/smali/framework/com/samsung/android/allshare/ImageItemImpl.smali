.class final Lcom/samsung/android/allshare/ImageItemImpl;
.super Lcom/samsung/android/allshare/Item;
.source "ImageItemImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/ImageItemImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mItemImpl:Lcom/samsung/android/allshare/ItemImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 204
    new-instance v0, Lcom/samsung/android/allshare/ImageItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/ImageItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/ImageItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 47
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 197
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 199
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/ImageItemImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 184
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 152
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 153
    return v0

    .line 154
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_19

    instance-of v2, p1, Lcom/samsung/android/allshare/ImageItemImpl;

    if-nez v2, :cond_c

    goto :goto_19

    .line 158
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageItemImpl;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0

    .line 155
    :cond_19
    :goto_19
    return v1
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .registers 2

    .line 216
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .registers 2

    .line 221
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getBitrate()I
    .registers 2

    .line 289
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_6

    .line 290
    const/4 v0, -0x1

    return v0

    .line 292
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBitrate()I

    move-result v0

    return v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_6

    .line 177
    const/4 v0, 0x0

    return-object v0

    .line 179
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 306
    const-string v0, ""

    return-object v0

    .line 308
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getChannelNr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 247
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 249
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDate()Ljava/util/Date;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_6

    .line 121
    const/4 v0, 0x0

    return-object v0

    .line 123
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 226
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .registers 3

    .line 109
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public whitelist getFileSize()J
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 129
    const-wide/16 v0, -0x1

    return-wide v0

    .line 131
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .registers 2

    .line 231
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    .line 86
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 85
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    const-string v1, "BUNDLE_PARCELABLE_IMAGE_ITEM_LOCATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_16
    check-cast v0, Landroid/location/Location;

    .line 85
    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    goto :goto_17

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_IMAGE_ITEM_RESOLUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public whitelist getResourceList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_a

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 300
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getResourceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 282
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0

    .line 284
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .registers 2

    .line 236
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_a

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 275
    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getSubtitleList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_16

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_PARCELABLE_IMAGE_ITEM_THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_16
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 137
    const-string v0, ""

    return-object v0

    .line 139
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2

    .line 115
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_6

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .registers 2

    .line 254
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 255
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    .line 257
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    if-nez v0, :cond_7

    .line 265
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 267
    :cond_7
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/allshare/ImageItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 164
    return v1

    .line 166
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getObjectID()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "objID":Ljava/lang/String;
    if-nez v0, :cond_d

    .line 169
    return v1

    .line 171
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public whitelist isRootFolder()Z
    .registers 2

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ImageItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 190
    return-void
.end method

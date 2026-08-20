.class public Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;
.super Lcom/samsung/android/allshare/Item;
.source "SimpleImageItem.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .registers 3

    .line 91
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .registers 3

    .line 97
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBitrate()I
    .registers 3

    .line 188
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

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

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .registers 3

    .line 200
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .registers 3

    .line 157
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDate()Ljava/util/Date;
    .registers 3

    .line 42
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 48
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .registers 3

    .line 139
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileSize()J
    .registers 3

    .line 145
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_d
    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .registers 3

    .line 109
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResourceList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 3

    .line 182
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .registers 2

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .line 176
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .registers 3

    .line 127
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2

    .line 60
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 67
    :cond_6
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/net/Uri;

    .line 66
    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .registers 3

    .line 163
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRootFolder()Z
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleImageItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleImageItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method

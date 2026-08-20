.class public Lcom/samsung/android/content/clipboard/data/SemUriListClipData;
.super Lcom/samsung/android/content/clipboard/data/SemClipData;
.source "SemUriListClipData.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemUriListClipData"

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist mUriArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 48
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(I)V

    .line 49
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;-><init>(Landroid/os/Parcel;)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->readFromSource(Landroid/os/Parcel;)V

    .line 57
    return-void
.end method

.method private blacklist setClipData()V
    .registers 7

    .line 129
    const-string/jumbo v0, "text/uri-list"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "mimeType":[Ljava/lang/String;
    new-instance v1, Landroid/content/ClipData$Item;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    .line 131
    .local v1, "item":Landroid/content/ClipData$Item;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData([Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 132
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1d
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getClipDataInternal()Landroid/content/ClipData;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    iget-object v5, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 135
    .end local v2    # "i":I
    :cond_40
    return-void
.end method


# virtual methods
.method public blacklist convertForRemote()V
    .registers 1

    .line 249
    return-void
.end method

.method public blacklist deleteContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 265
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 166
    const-string v0, "SemUriListClipData"

    const-string v1, "multiple uri equals"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-super {p0, p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 169
    return v1

    .line 172
    :cond_f
    instance-of v0, p1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    if-nez v0, :cond_14

    .line 173
    return v1

    .line 176
    :cond_14
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    .line 178
    .local v0, "trgData":Lcom/samsung/android/content/clipboard/data/SemUriListClipData;
    const/4 v2, 0x0

    .line 179
    .local v2, "result":Z
    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_36

    .line 180
    iget-object v3, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_34

    move v1, v4

    :cond_34
    move v2, v1

    goto :goto_3d

    .line 182
    :cond_36
    invoke-virtual {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3d

    .line 183
    return v4

    .line 186
    :cond_3d
    :goto_3d
    return v2
.end method

.method public whitelist getClipData()Landroid/content/ClipData;
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData()V

    .line 146
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method protected blacklist getClipDataInternal()Landroid/content/ClipData;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_7

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setClipData()V

    .line 158
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public blacklist getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 2

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUriList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "multiUri":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 87
    .local v2, "uri":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v2    # "uri":Ljava/lang/String;
    goto :goto_11

    .line 89
    :cond_25
    return-object v0
.end method

.method public blacklist insertContentUri(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;

    .line 257
    return-void
.end method

.method protected blacklist readFromSource(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    .line 194
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 195
    return-void
.end method

.method public blacklist setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .registers 6
    .param p1, "format"    # I
    .param p2, "altData"    # Lcom/samsung/android/content/clipboard/data/SemClipData;

    .line 111
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->setAlternateClipData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v0

    .line 112
    .local v0, "result":Z
    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    goto :goto_20

    .line 116
    :cond_10
    packed-switch p1, :pswitch_data_22

    .line 121
    const/4 v0, 0x0

    goto :goto_1f

    .line 118
    :pswitch_15
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;

    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->setUriListInternal(Ljava/util/ArrayList;)Z

    move-result v0

    .line 119
    nop

    .line 125
    :goto_1f
    return v0

    .line 113
    :cond_20
    :goto_20
    const/4 v1, 0x0

    return v1

    :pswitch_data_22
    .packed-switch 0x20
        :pswitch_15
    .end packed-switch
.end method

.method public whitelist setUriList(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)Z"
        }
    .end annotation

    .line 66
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p1, :cond_4

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 71
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_f

    .line 73
    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setUriListInternal(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 96
    .local p1, "uriList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_4

    .line 97
    const/4 v0, 0x0

    return v0

    .line 99
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v1    # "str":Ljava/lang/String;
    goto :goto_f

    .line 103
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toLoad()V
    .registers 1

    .line 240
    return-void
.end method

.method public blacklist toSave()V
    .registers 1

    .line 232
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 223
    const-string v0, "SemUriListClipData class."

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 210
    const-string v0, "SemUriListClipData"

    const-string v1, "Multiple Uri write to parcel"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    invoke-super {p0, p1, p2}, Lcom/samsung/android/content/clipboard/data/SemClipData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/content/clipboard/data/SemUriListClipData;->mUriArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 216
    return-void
.end method

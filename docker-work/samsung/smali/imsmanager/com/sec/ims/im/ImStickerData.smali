.class public Lcom/sec/ims/im/ImStickerData;
.super Ljava/lang/Object;
.source "ImStickerData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/im/ImStickerData;",
            ">;"
        }
    .end annotation
.end field

.field private static final contentType:Ljava/lang/String; = "application/vnd.gsma.rcs-sticker+xml"

.field private static final innerUri:Ljava/lang/String; = "content://com.samsung.rcs.im/getstickerfile/"


# instance fields
.field private isSticker:Z

.field private mStickerId:Ljava/lang/String;

.field private mStickerItemId:Ljava/lang/String;

.field private mStickerItemName:Ljava/lang/String;

.field private mStickerItemThumbnailUri:Ljava/lang/String;

.field private mStickerItemThumbnailUrl:Ljava/lang/String;

.field private mStickerItemUri:Ljava/lang/String;

.field private mStickerItemUrl:Ljava/lang/String;

.field private mStickerName:Ljava/lang/String;

.field private mStickerNums:Ljava/lang/String;

.field private mStickerThumbnail:Ljava/lang/String;

.field private mStickerUntil:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 431
    new-instance v0, Lcom/sec/ims/im/ImStickerData$1;

    invoke-direct {v0}, Lcom/sec/ims/im/ImStickerData$1;-><init>()V

    sput-object v0, Lcom/sec/ims/im/ImStickerData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v0, 0x1

    :cond_4f
    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 395
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 13
    .param p1, "xmlBody"    # Ljava/lang/String;

    .line 85
    const-string v0, "content://com.samsung.rcs.im/getstickerfile/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 86
    const-string v1, ""

    .line 90
    .local v1, "tagName":Ljava/lang/String;
    :try_start_a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 91
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 93
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 94
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_1e} :catch_d5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1e} :catch_d0

    .line 95
    .local v4, "eventType":I
    const/4 v5, 0x0

    .line 96
    .local v5, "isItemTag":Z
    :goto_1f
    const/4 v6, 0x1

    if-eq v4, v6, :cond_9a

    .line 97
    const-string v6, "thumbnail"

    const-string v7, "name"

    packed-switch v4, :pswitch_data_da

    :pswitch_29
    goto/16 :goto_94

    .line 117
    :pswitch_2b
    if-nez v1, :cond_2e

    .line 118
    goto :goto_94

    .line 120
    :cond_2e
    :try_start_2e
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 122
    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    goto :goto_94

    .line 123
    :cond_3b
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 124
    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    goto :goto_94

    .line 125
    :cond_44
    const-string v6, "nums"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 126
    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    goto :goto_94

    .line 114
    .end local v8    # "value":Ljava/lang/String;
    :pswitch_4f
    const/4 v1, 0x0

    .line 115
    goto :goto_94

    .line 101
    :pswitch_51
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 102
    const-string v8, "set"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_5c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2e .. :try_end_5c} :catch_d5
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_5c} :catch_d0

    const-string v9, "id"

    const/4 v10, 0x0

    if-eqz v8, :cond_70

    .line 103
    :try_start_61
    invoke-interface {v3, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 104
    const-string v6, "until"

    invoke-interface {v3, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    goto :goto_94

    .line 105
    :cond_70
    const-string v8, "item"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_94

    .line 106
    invoke-interface {v3, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 107
    invoke-interface {v3, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 108
    const-string v7, "url"

    invoke-interface {v3, v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 109
    invoke-interface {v3, v10, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    goto :goto_94

    .line 99
    :pswitch_93
    nop

    .line 130
    :cond_94
    :goto_94
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v4, v6

    goto :goto_1f

    .line 132
    :cond_9a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/ims/im/ImStickerData;->urlToUriParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    .line 133
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/sec/ims/im/ImStickerData;->urlToUriParser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    .line 134
    iput-boolean v6, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z
    :try_end_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_ce} :catch_d5
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_ce} :catch_d0

    .line 141
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "eventType":I
    .end local v5    # "isItemTag":Z
    nop

    .line 142
    return-void

    .line 138
    .end local v2    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_d0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 140
    return-void

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catch_d5
    move-exception v0

    .line 136
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 137
    return-void

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_93
        :pswitch_29
        :pswitch_51
        :pswitch_4f
        :pswitch_2b
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "stickerId"    # Ljava/lang/String;
    .param p2, "stickerName"    # Ljava/lang/String;
    .param p3, "stickerUntil"    # Ljava/lang/String;
    .param p4, "stickerThumbnail"    # Ljava/lang/String;
    .param p5, "stickerNums"    # Ljava/lang/String;
    .param p6, "stickerItemId"    # Ljava/lang/String;
    .param p7, "stickerItemName"    # Ljava/lang/String;
    .param p8, "stickerItemUrl"    # Ljava/lang/String;
    .param p9, "stickerItemThumbnailUrl"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 69
    iput-object p2, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    .line 70
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    .line 73
    iput-object p5, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 76
    iput-object p8, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 77
    iput-object p9, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 79
    return-void
.end method

.method public static getContentType()Ljava/lang/String;
    .registers 1

    .line 51
    const-string v0, "application/vnd.gsma.rcs-sticker+xml"

    return-object v0
.end method

.method private urlToUriParser(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "url"    # Ljava/lang/String;

    .line 145
    const-string v0, ""

    if-nez p1, :cond_5

    .line 146
    return-object v0

    .line 148
    :cond_5
    const-string v1, "[?&=]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "parse":[Ljava/lang/String;
    const-string v2, ""

    .line 150
    .local v2, "folder":Ljava/lang/String;
    const-string v3, ""

    .line 151
    .local v3, "file":Ljava/lang/String;
    const-string v4, ""

    .line 153
    .local v4, "type":Ljava/lang/String;
    if-eqz v1, :cond_88

    array-length v5, v1

    const/4 v6, 0x7

    if-ne v5, v6, :cond_88

    .line 154
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_18
    array-length v5, v1

    if-ge v0, v5, :cond_6c

    .line 155
    aget-object v5, v1, v0

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_8a

    :cond_25
    goto :goto_43

    :sswitch_26
    const-string v7, "type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v6, 0x2

    goto :goto_43

    :sswitch_30
    const-string v7, "file"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v6, 0x1

    goto :goto_43

    :sswitch_3a
    const-string v7, "folder"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v6, 0x0

    :goto_43
    packed-switch v6, :pswitch_data_98

    goto :goto_69

    .line 163
    :pswitch_47
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_69

    .line 160
    :pswitch_5f
    add-int/lit8 v5, v0, 0x1

    aget-object v3, v1, v5

    .line 161
    goto :goto_69

    .line 157
    :pswitch_64
    add-int/lit8 v5, v0, 0x1

    aget-object v2, v1, v5

    .line 158
    nop

    .line 154
    :goto_69
    add-int/lit8 v0, v0, 0x2

    goto :goto_18

    .line 171
    .end local v0    # "i":I
    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_88
    return-object v0

    nop

    :sswitch_data_8a
    .sparse-switch
        -0x4ba2e392 -> :sswitch_3a
        0x2ff57c -> :sswitch_30
        0x368f3a -> :sswitch_26
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5f
        :pswitch_47
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public getStickerId()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemId()Ljava/lang/String;
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemName()Ljava/lang/String;
    .registers 2

    .line 281
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemThumbnailUri()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemThumbnailUrl()Ljava/lang/String;
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemUri()Ljava/lang/String;
    .registers 2

    .line 332
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerItemUrl()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerNums()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerThumbnail()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    return-object v0
.end method

.method public getStickerUntil()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    return-object v0
.end method

.method public isSticker()Z
    .registers 2

    .line 366
    iget-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    return v0
.end method

.method public setSticker(Z)V
    .registers 2
    .param p1, "sticker"    # Z

    .line 375
    iput-boolean p1, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    .line 376
    return-void
.end method

.method public setStickerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerId"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setStickerItemId(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerItemId"    # Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setStickerItemName(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerItemName"    # Ljava/lang/String;

    .line 290
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setStickerItemThumbnailUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerItemThumbnailUri"    # Ljava/lang/String;

    .line 358
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    .line 359
    return-void
.end method

.method public setStickerItemThumbnailUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerItemThumbnailUrl"    # Ljava/lang/String;

    .line 324
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public setStickerItemUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerItemUri"    # Ljava/lang/String;

    .line 341
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public setStickerItemUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerItemUrl"    # Ljava/lang/String;

    .line 307
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setStickerName(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerName"    # Ljava/lang/String;

    .line 188
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setStickerNums(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerNums"    # Ljava/lang/String;

    .line 256
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setStickerThumbnail(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerThumbnail"    # Ljava/lang/String;

    .line 239
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setStickerUntil(Ljava/lang/String;)V
    .registers 2
    .param p1, "stickerUntil"    # Ljava/lang/String;

    .line 222
    iput-object p1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImStickerData [mStickerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerUntil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerThumbnail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerNums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerItemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerItemUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerItemThumbnailUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerItemUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStickerItemThumbnailUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 405
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerUntil:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerThumbnail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerNums:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/sec/ims/im/ImStickerData;->mStickerItemThumbnailUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-boolean v0, p0, Lcom/sec/ims/im/ImStickerData;->isSticker:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 417
    return-void
.end method

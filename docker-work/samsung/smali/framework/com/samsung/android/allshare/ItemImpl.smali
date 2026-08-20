.class final Lcom/samsung/android/allshare/ItemImpl;
.super Lcom/samsung/android/allshare/Item;
.source "ItemImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/ItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DATETIME_FORMAT:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss"

.field private static final blacklist DATETIME_FORMAT_WITH_MS:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sss"

.field private static final blacklist DATETIME_FORMAT_WITH_MS_OFFSET:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sss+hh:mm"

.field private static final blacklist DATETIME_FORMAT_WITH_MS_OFFSET_Z:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss.sssZ"

.field private static final blacklist DATETIME_FORMAT_WITH_OFFSET:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ss+hh:mm"

.field private static final blacklist DATETIME_FORMAT_WITH_OFFSET_Z:Ljava/lang/String; = "CCYY-MM-DDThh:mm:ssZ"

.field private static final blacklist DATETIME_PATTERN:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final blacklist DATETIME_PATTERN_WITH_MS:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

.field private static final blacklist DATETIME_PATTERN_WITH_MS_WITH_OFFSET:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

.field private static final blacklist DATETIME_PATTERN_WITH_MS_WITH_OFFSET_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field private static final blacklist DATETIME_PATTERN_WITH_OFFSET:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

.field private static final blacklist DATETIME_PATTERN_WITH_OFFSET_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

.field private static final blacklist DATE_FORMAT:Ljava/lang/String; = "CCYY-MM-DD"

.field private static final blacklist DATE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final blacklist TAG:Ljava/lang/String; = "ItemImpl"


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 213
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/ItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/ItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 49
    iput-object p1, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 207
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 208
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/ItemImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static blacklist getFormatter(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "dateStr"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 93
    .local v0, "dateStrLen":I
    const-string v1, "CCYY-MM-DD"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_10

    .line 94
    const-string/jumbo v1, "yyyy-MM-dd"

    return-object v1

    .line 95
    :cond_10
    const-string v1, "CCYY-MM-DDThh:mm:ss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 96
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    return-object v1

    .line 97
    :cond_1c
    const-string v1, "CCYY-MM-DDThh:mm:ss+hh:mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_28

    .line 98
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    return-object v1

    .line 99
    :cond_28
    const-string v1, "CCYY-MM-DDThh:mm:ssZ"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 100
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    return-object v1

    .line 101
    :cond_34
    const-string v1, "CCYY-MM-DDThh:mm:ss.sss"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_40

    .line 102
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    return-object v1

    .line 103
    :cond_40
    const-string v1, "CCYY-MM-DDThh:mm:ss.sss+hh:mm"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 104
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    return-object v1

    .line 105
    :cond_4c
    const-string v1, "CCYY-MM-DDThh:mm:ss.sssZ"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_58

    .line 106
    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    return-object v1

    .line 108
    :cond_58
    const/4 v1, 0x0

    return-object v1
.end method

.method static blacklist getItem(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;
    .registers 6
    .param p0, "b"    # Landroid/os/Bundle;

    .line 164
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 165
    return-object v0

    .line 166
    :cond_4
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "typeStr":Ljava/lang/String;
    if-nez v1, :cond_d

    .line 168
    return-object v0

    .line 170
    :cond_d
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$MediaType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    .line 172
    .local v2, "type":Lcom/samsung/android/allshare/Item$MediaType;
    sget-object v3, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$MediaType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_30

    .line 180
    return-object v0

    .line 178
    :pswitch_1d
    new-instance v0, Lcom/samsung/android/allshare/VideoItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 176
    :pswitch_23
    new-instance v0, Lcom/samsung/android/allshare/ImageItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    .line 174
    :pswitch_29
    new-instance v0, Lcom/samsung/android/allshare/AudioItemImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_29
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 198
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 199
    .local v0, "bundle":Landroid/os/Bundle;
    iput-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 200
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .registers 2

    .line 240
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .registers 2

    .line 245
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getBitrate()I
    .registers 2

    .line 357
    const/4 v0, -0x1

    return v0
.end method

.method blacklist getBundle()Landroid/os/Bundle;
    .registers 2

    .line 138
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 521
    :cond_a
    const-string v1, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .registers 3

    .line 507
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 508
    const-string v0, ""

    return-object v0

    .line 510
    :cond_7
    const-string v1, "BUNDLE_INT_ITEM_CHANNELNR"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    .local v0, "channelNr":Ljava/lang/String;
    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .registers 5

    .line 285
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 286
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 288
    :cond_7
    const-string v1, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, "itemConstructor":Ljava/lang/String;
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_34

    .line 293
    :cond_16
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v1

    .line 295
    .local v1, "conType":Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    sget-object v2, Lcom/samsung/android/allshare/ItemImpl$2;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_38

    .line 307
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 303
    :pswitch_28
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 301
    :pswitch_2b
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 299
    :pswitch_2e
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 297
    :pswitch_31
    sget-object v2, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v2

    .line 291
    .end local v1    # "conType":Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    :cond_34
    :goto_34
    sget-object v1, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v1

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
    .end packed-switch
.end method

.method public whitelist getDate()Ljava/util/Date;
    .registers 7

    .line 114
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 115
    return-object v1

    .line 116
    :cond_6
    const-string v2, "BUNDLE_STRING_ITEM_DATE"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "dateStr":Ljava/lang/String;
    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_52

    .line 120
    :cond_15
    const/4 v1, 0x0

    .line 122
    .local v1, "date":Ljava/util/Date;
    :try_start_16
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemImpl;->getFormatter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    .local v2, "format":Ljava/lang/String;
    if-eqz v2, :cond_2f

    .line 124
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "dateTime_format":Ljava/text/SimpleDateFormat;
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 126
    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_2e
    .catch Ljava/text/ParseException; {:try_start_16 .. :try_end_2e} :catch_30

    move-object v1, v4

    .line 133
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "dateTime_format":Ljava/text/SimpleDateFormat;
    :cond_2f
    goto :goto_51

    .line 128
    :catch_30
    move-exception v2

    .line 129
    .local v2, "p1":Ljava/text/ParseException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDate  ParseException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 132
    const-string v5, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v4, "ItemImpl"

    invoke-static {v4, v3, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 134
    .end local v2    # "p1":Ljava/text/ParseException;
    :goto_51
    return-object v1

    .line 119
    .end local v1    # "date":Ljava/util/Date;
    :cond_52
    :goto_52
    return-object v1
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 250
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_d

    :cond_7
    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist getFileSize()J
    .registers 3

    .line 225
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

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
    .registers 2

    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .registers 2

    .line 260
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

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

.method protected final blacklist getObjectID()Ljava/lang/String;
    .registers 4

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 145
    return-object v1

    .line 147
    :cond_9
    const-string v2, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "objID":Ljava/lang/String;
    if-nez v2, :cond_12

    .line 150
    return-object v1

    .line 152
    :cond_12
    return-object v2
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .registers 2

    .line 265
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResourceList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_a

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 365
    :cond_a
    nop

    .line 366
    const-string v1, "BUNDLE_PARCELABLE_ITEM_RESOURCE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 367
    .local v0, "resourceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$Resource;>;"
    if-nez v0, :cond_19

    .line 370
    return-object v1

    .line 372
    :cond_19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 373
    .local v3, "parcel":Landroid/os/Parcelable;
    new-instance v4, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;

    move-object v5, v3

    check-cast v5, Landroid/os/Bundle;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/allshare/ItemImpl$ResourceImpl;-><init>(Lcom/samsung/android/allshare/ItemImpl;Landroid/os/Bundle;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    .end local v3    # "parcel":Landroid/os/Parcelable;
    goto :goto_1d

    .line 376
    :cond_35
    return-object v1
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 2

    .line 352
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->NONE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .registers 2

    .line 270
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

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .registers 2

    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 3

    .line 54
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

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

    .line 157
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_c

    .line 60
    :cond_6
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_c
    check-cast v0, Landroid/net/Uri;

    .line 59
    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 313
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0

    .line 315
    :cond_7
    const-string v1, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "deliveryModeStr":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1b

    .line 322
    :cond_16
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v1

    .line 324
    .local v1, "deliveryMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    return-object v1

    .line 318
    .end local v1    # "deliveryMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :cond_1b
    :goto_1b
    const-string v1, "ItemImpl"

    const-string v2, " getWebContentDeliveryMode() : deliveryModeStr is null or empty! "

    invoke-static {v1, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v1
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/samsung/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_7

    .line 332
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 334
    :cond_7
    const-string v1, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "playModeStr":Ljava/lang/String;
    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1b

    .line 339
    :cond_16
    invoke-static {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v1

    .line 341
    .local v1, "playMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    return-object v1

    .line 337
    .end local v1    # "playMode":Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    :cond_1b
    :goto_1b
    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v1
.end method

.method public whitelist isRootFolder()Z
    .registers 2

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    return-void
.end method

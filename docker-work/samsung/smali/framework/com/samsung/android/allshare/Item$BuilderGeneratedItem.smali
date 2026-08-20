.class Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;
.super Lcom/samsung/android/allshare/Item;
.source "Item.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderGeneratedItem"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAlbumTitle:Ljava/lang/String;

.field private blacklist mArtist:Ljava/lang/String;

.field private blacklist mCaptionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

.field private blacklist mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

.field private blacklist mDate:Ljava/util/Date;

.field private blacklist mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field private blacklist mDuration:J

.field private blacklist mGenre:Ljava/lang/String;

.field private blacklist mItemFilepath:Ljava/lang/String;

.field private blacklist mItemMimetype:Ljava/lang/String;

.field private blacklist mItemTitle:Ljava/lang/String;

.field private blacklist mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1056
    new-instance v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1068
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 810
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 812
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 820
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 822
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 824
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 826
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 828
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 830
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 1069
    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 1070
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;)V
    .registers 11
    .param p1, "conType"    # Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "subtitlePath"    # Ljava/lang/String;
    .param p7, "contentAttr"    # Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .param p8, "deliveryMode"    # Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
            ")V"
        }
    .end annotation

    .line 847
    .local p6, "captionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Caption;>;"
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 810
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 812
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 820
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 822
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 824
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 826
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 828
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 830
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 848
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 849
    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 850
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 851
    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 852
    iput-object p8, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 853
    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 854
    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 855
    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 856
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V
    .registers 29
    .param p1, "conType"    # Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "subtitlePath"    # Ljava/lang/String;
    .param p7, "contentAttr"    # Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .param p8, "deliveryMode"    # Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .param p9, "artist"    # Ljava/lang/String;
    .param p10, "albumTitle"    # Ljava/lang/String;
    .param p11, "genre"    # Ljava/lang/String;
    .param p12, "date"    # Ljava/util/Date;
    .param p13, "duration"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "J)V"
        }
    .end annotation

    .line 861
    .local p6, "captionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Caption;>;"
    move-object v0, p0

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 810
    sget-object v1, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 812
    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 817
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 820
    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 822
    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 824
    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 826
    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 828
    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 830
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 863
    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 864
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 865
    move-object v3, p1

    iput-object v3, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 866
    move-object/from16 v4, p8

    iput-object v4, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 867
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 868
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 869
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 870
    move-object/from16 v8, p9

    iput-object v8, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 871
    move-object/from16 v9, p10

    iput-object v9, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 872
    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 873
    move-object/from16 v11, p12

    iput-object v11, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 874
    move-wide/from16 v12, p13

    iput-wide v12, v0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 875
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V
    .registers 16

    invoke-direct/range {p0 .. p14}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;)V
    .registers 11
    .param p1, "conType"    # Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "mimeType"    # Ljava/lang/String;
    .param p5, "subtitlePath"    # Ljava/lang/String;
    .param p7, "contentAttr"    # Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .param p8, "playMode"    # Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 881
    .local p6, "captionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Caption;>;"
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 810
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 812
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 820
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 822
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 824
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 826
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 828
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 830
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 882
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 883
    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 884
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 885
    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 886
    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 887
    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 888
    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 890
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    if-ne p8, v0, :cond_37

    .line 891
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_44

    .line 892
    :cond_37
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    if-ne p8, v0, :cond_40

    .line 893
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_44

    .line 895
    :cond_40
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 896
    :goto_44
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;)V
    .registers 10
    .param p1, "conType"    # Lcom/samsung/android/allshare/ItemCreator$ConstructorType;
    .param p2, "filepath"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "subtitlePath"    # Ljava/lang/String;
    .param p6, "contentAttr"    # Lcom/samsung/android/allshare/Item$ContentAttributeType;
    .param p7, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/allshare/ItemCreator$ConstructorType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;",
            "Lcom/samsung/android/allshare/Item$ContentAttributeType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 834
    .local p5, "captionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Caption;>;"
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 810
    sget-object v0, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 812
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 820
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 822
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 824
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 826
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 828
    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 830
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 835
    iput-object p2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 836
    iput-object p7, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 837
    iput-object p3, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 838
    iput-object p1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 839
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 840
    iput-object p4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 841
    iput-object p5, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    .line 842
    iput-object p6, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 843
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;Lcom/samsung/android/allshare/Item$BuilderGeneratedItem-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/samsung/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/allshare/Item$ContentAttributeType;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "src"    # Landroid/os/Parcel;

    .line 1045
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 1046
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 1047
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 1048
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "conType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1050
    .local v1, "deliveryMode":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 1052
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 1053
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 1054
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1030
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1074
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1075
    return v0

    .line 1076
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    instance-of v2, p1, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    if-nez v2, :cond_c

    goto :goto_2b

    .line 1079
    :cond_c
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;

    .line 1081
    .local v2, "item":Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 1082
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 1084
    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 1077
    .end local v2    # "item":Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .registers 2

    .line 958
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .registers 2

    .line 963
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public blacklist getBitrate()I
    .registers 2

    .line 1146
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .registers 5

    .line 933
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 934
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$MediaType;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 938
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    .line 940
    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumToString()Ljava/lang/String;

    move-result-object v1

    .line 939
    const-string v2, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    const-string v2, "BUNDLE_PARCELABLE_ITEM_CAPTION_LIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 945
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mContentAttribute:Lcom/samsung/android/allshare/Item$ContentAttributeType;

    .line 946
    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item$ContentAttributeType;->enumToString()Ljava/lang/String;

    move-result-object v1

    .line 945
    const-string v2, "BUNDLE_STRING_CONTENT_ATTRIBUTE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_ITEM_ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    const-string v2, "BUNDLE_STRING_ITEM_GENRE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_7f

    :cond_7d
    const-wide/16 v1, 0x0

    :goto_7f
    const-string v3, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 951
    iget-wide v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    const-string v3, "BUNDLE_LONG_ITEM_DURATION"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 953
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

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mCaptionList:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1010
    :cond_a
    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .registers 2

    .line 1157
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .registers 3

    .line 1099
    sget-object v0, Lcom/samsung/android/allshare/Item$1;->$SwitchMap$com$samsung$android$allshare$ItemCreator$ConstructorType:[I

    iget-object v1, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    .line 1111
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 1107
    :pswitch_10
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 1105
    :pswitch_13
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->WEB:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 1103
    :pswitch_16
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    .line 1101
    :pswitch_19
    sget-object v0, Lcom/samsung/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/samsung/android/allshare/Item$ContentBuildType;

    return-object v0

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist getDate()Ljava/util/Date;
    .registers 2

    .line 900
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public whitelist getDuration()J
    .registers 3

    .line 973
    iget-wide v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .registers 2

    .line 1025
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getFileSize()J
    .registers 3

    .line 1015
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .registers 2

    .line 968
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .registers 2

    .line 993
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .registers 2

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .registers 2

    .line 988
    const-string v0, ""

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

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .registers 2

    .line 1141
    sget-object v0, Lcom/samsung/android/allshare/Item$SeekMode;->BYTE:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .registers 2

    .line 998
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 999
    const/4 v0, 0x0

    return-object v0

    .line 1001
    :cond_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

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

    .line 1134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .registers 2

    .line 983
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .registers 2

    .line 905
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .registers 2

    .line 910
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/allshare/Item;->-$$Nest$smconvertItemTypeFromMimeType(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .registers 6

    .line 915
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 916
    return-object v1

    .line 919
    :cond_6
    :try_start_6
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 920
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "scheme":Ljava/lang/String;
    if-eqz v2, :cond_18

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_18

    .line 925
    :cond_17
    return-object v0

    .line 923
    :cond_18
    :goto_18
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_23} :catch_24

    return-object v1

    .line 926
    .end local v0    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    :catch_24
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .registers 2

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    if-ne v0, v1, :cond_9

    .line 1124
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 1125
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v1, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    if-ne v0, v1, :cond_12

    .line 1126
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0

    .line 1128
    :cond_12
    sget-object v0, Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1090
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1091
    invoke-virtual {p0}, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0

    .line 1093
    :cond_f
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist isRootFolder()Z
    .registers 2

    .line 978
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1035
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/samsung/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemCreator$ConstructorType;->enumToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;->enumToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1040
    iget-object v0, p0, Lcom/samsung/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1041
    return-void
.end method

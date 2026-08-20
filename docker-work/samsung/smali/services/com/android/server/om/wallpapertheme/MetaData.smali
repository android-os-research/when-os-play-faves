.class public Lcom/android/server/om/wallpapertheme/MetaData;
.super Ljava/lang/Object;
.source "MetaData.java"


# static fields
.field public static ATTR_DEFAULT_VALUE:Ljava/lang/String; = "DefaultValue"

.field public static ATTR_DEST_ATTR_NAME:Ljava/lang/String; = "DestAttribName"

.field public static ATTR_NAME:Ljava/lang/String; = "Name"

.field public static ATTR_OPACITY:Ljava/lang/String; = "Opacity"

.field public static ATTR_P_OPTION:Ljava/lang/String; = "POption"

.field public static ATTR_TARGET_PKG_NAME:Ljava/lang/String; = "TargetPackageName"

.field public static ATTR_UID:Ljava/lang/String; = "UID"

.field public static ATTR_VALUE_REF:Ljava/lang/String; = "ValueRef"

.field public static ATTR_VALUE_TYPE:Ljava/lang/String; = "ValueType"

.field public static TAG_APP_METADATA:Ljava/lang/String; = "AppMetaData"

.field public static TAG_INCLUDE:Ljava/lang/String; = "Include"

.field public static TAG_PROPERTY:Ljava/lang/String; = "Property"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

.field public final mPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/wallpapertheme/Package;",
            ">;"
        }
    .end annotation
.end field

.field public mRpUID:Ljava/lang/String;

.field public mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/res/XmlResourceParser;Lcom/android/server/om/wallpapertheme/MetaData;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/android/server/om/wallpapertheme/MetaData;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/om/wallpapertheme/Package;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SWT_MetaData"

    .line 15
    iput-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    .line 36
    iput-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mRpUID:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mPackageList:Ljava/util/ArrayList;

    .line 40
    iput-object p2, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    if-nez p1, :cond_18

    const-string p0, "creating metadata is failed - xmlParser is null"

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_18
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result p2

    :goto_1c
    const/4 p3, 0x1

    if-eq p2, p3, :cond_2a

    const/4 p3, 0x2

    if-ne p2, p3, :cond_25

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaData;->parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 52
    :cond_25
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p2

    goto :goto_1c

    :cond_2a
    return-void
.end method


# virtual methods
.method public final addMetaData(Lcom/android/server/om/wallpapertheme/MetaData;)V
    .registers 3

    .line 96
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/MetaData;->mPackageList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/om/wallpapertheme/Package;

    invoke-virtual {p1}, Lcom/android/server/om/wallpapertheme/Package;->getUidList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final addUID(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 12

    .line 100
    sget-object v0, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_UID:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_VALUE_TYPE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 102
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_DEST_ATTR_NAME:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 103
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_DEFAULT_VALUE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 104
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_P_OPTION:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 105
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_VALUE_REF:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 106
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_OPACITY:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 108
    new-instance p1, Lcom/android/server/om/wallpapertheme/Uid;

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/om/wallpapertheme/Uid;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    invoke-virtual {v1, p1}, Lcom/android/server/om/wallpapertheme/Package;->addUid(Lcom/android/server/om/wallpapertheme/Uid;)V

    .line 111
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mRpUID:Ljava/lang/String;

    if-nez p1, :cond_46

    const-string p1, "-"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 113
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mRpUID:Ljava/lang/String;

    :cond_46
    return-void
.end method

.method public getCurrentPackage()Lcom/android/server/om/wallpapertheme/Package;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    return-object p0
.end method

.method public final getPackage(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/Package;
    .registers 5

    .line 87
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/om/wallpapertheme/Package;

    .line 88
    invoke-virtual {v1}, Lcom/android/server/om/wallpapertheme/Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 90
    :cond_1d
    new-instance v0, Lcom/android/server/om/wallpapertheme/Package;

    invoke-direct {v0, p1}, Lcom/android/server/om/wallpapertheme/Package;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mPackageList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getRpUID()Ljava/lang/String;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mRpUID:Ljava/lang/String;

    return-object p0
.end method

.method public final parseStartTag(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    .line 65
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/wallpapertheme/MetaData;->TAG_APP_METADATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 66
    sget-object v0, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    sget-object v2, Lcom/android/server/om/wallpapertheme/MetaData;->ATTR_TARGET_PKG_NAME:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Multi window"

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/server/om/wallpapertheme/MetaData;->getPackage(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/Package;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    goto :goto_77

    .line 76
    :cond_47
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaData;->getPackage(Ljava/lang/String;)Lcom/android/server/om/wallpapertheme/Package;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    goto :goto_77

    .line 79
    :cond_4e
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    if-eqz v0, :cond_62

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/om/wallpapertheme/MetaData;->TAG_PROPERTY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaData;->addUID(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_77

    .line 81
    :cond_62
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mCurrentPackage:Lcom/android/server/om/wallpapertheme/Package;

    if-eqz v0, :cond_77

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/server/om/wallpapertheme/MetaData;->TAG_INCLUDE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_77

    .line 82
    iget-object p1, p0, Lcom/android/server/om/wallpapertheme/MetaData;->mSeslMetaData:Lcom/android/server/om/wallpapertheme/MetaData;

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/MetaData;->addMetaData(Lcom/android/server/om/wallpapertheme/MetaData;)V

    :cond_77
    :goto_77
    return-void
.end method

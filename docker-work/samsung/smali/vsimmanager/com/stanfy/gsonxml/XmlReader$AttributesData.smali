.class final Lcom/stanfy/gsonxml/XmlReader$AttributesData;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AttributesData"
.end annotation


# instance fields
.field count:I

.field names:[Ljava/lang/String;

.field ns:[Ljava/lang/String;

.field final synthetic this$0:Lcom/stanfy/gsonxml/XmlReader;

.field values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stanfy/gsonxml/XmlReader;I)V
    .registers 3
    .param p2, "capacity"    # I

    .line 746
    iput-object p1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->this$0:Lcom/stanfy/gsonxml/XmlReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    const/4 p1, 0x0

    iput p1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    .line 747
    invoke-direct {p0, p2}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    .line 748
    return-void
.end method

.method private createArrays(I)V
    .registers 3
    .param p1, "capacity"    # I

    .line 751
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    .line 752
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    .line 753
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    .line 754
    return-void
.end method


# virtual methods
.method public fill(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 757
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 758
    .local v0, "aCount":I
    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_c

    .line 759
    invoke-direct {p0, v0}, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->createArrays(I)V

    .line 762
    :cond_c
    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->count:I

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_34

    .line 764
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 765
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->this$0:Lcom/stanfy/gsonxml/XmlReader;

    iget-object v2, v2, Lcom/stanfy/gsonxml/XmlReader;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iget-boolean v2, v2, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    if-eqz v2, :cond_29

    .line 766
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 768
    :cond_29
    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->values:[Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 770
    .end local v1    # "i":I
    :cond_34
    return-void
.end method

.method public getName(I)Ljava/lang/String;
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->names:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$AttributesData;->ns:[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/stanfy/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

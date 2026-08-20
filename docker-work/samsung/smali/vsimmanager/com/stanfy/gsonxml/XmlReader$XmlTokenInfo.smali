.class final Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;
.super Ljava/lang/Object;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XmlTokenInfo"
.end annotation


# instance fields
.field attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

.field name:Ljava/lang/String;

.field ns:Ljava/lang/String;

.field type:I

.field value:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/stanfy/gsonxml/XmlReader$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/stanfy/gsonxml/XmlReader$1;

    .line 715
    invoke-direct {p0}, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 722
    const/4 v0, -0x1

    iput v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    .line 723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    .line 724
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    .line 725
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    .line 726
    iput-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    .line 727
    return-void
.end method

.method public getName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .registers 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 737
    iget-object v0, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/stanfy/gsonxml/XmlReader;->nameWithNs(Ljava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "xml "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    const-string v1, "start"

    goto :goto_1b

    :cond_13
    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    const-string v1, "end"

    goto :goto_1b

    :cond_19
    const-string v1, "value"

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->ns:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    if-eqz v1, :cond_5d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stanfy/gsonxml/XmlReader$XmlTokenInfo;->attributesData:Lcom/stanfy/gsonxml/XmlReader$AttributesData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_5f

    :cond_5d
    const-string v1, ""

    :goto_5f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

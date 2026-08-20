.class public Lcom/stanfy/gsonxml/GsonXmlBuilder;
.super Ljava/lang/Object;
.source "GsonXmlBuilder.java"


# instance fields
.field private coreBuilder:Lcom/google/gson/GsonBuilder;

.field private final options:Lcom/stanfy/gsonxml/XmlReader$Options;

.field private xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0}, Lcom/stanfy/gsonxml/XmlReader$Options;-><init>()V

    iput-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    .line 23
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    .line 27
    iput-boolean v1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    .line 28
    return-void
.end method


# virtual methods
.method public create()Lcom/stanfy/gsonxml/GsonXml;
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    if-nez v0, :cond_b

    .line 165
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    .line 167
    :cond_b
    new-instance v0, Lcom/stanfy/gsonxml/GsonXml;

    iget-object v1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    iget-object v3, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    invoke-direct {v0, v1, v2, v3}, Lcom/stanfy/gsonxml/GsonXml;-><init>(Lcom/google/gson/Gson;Lcom/stanfy/gsonxml/XmlParserCreator;Lcom/stanfy/gsonxml/XmlReader$Options;)V

    return-object v0
.end method

.method public setPrimitiveArrays(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "primitiveArrays"    # Z

    .line 142
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->primitiveArrays:Z

    .line 143
    return-object p0
.end method

.method public setRootArrayPrimitive(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "rootArrayPrimitive"    # Z

    .line 153
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->rootArrayPrimitive:Z

    .line 154
    return-object p0
.end method

.method public setSameNameLists(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 121
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->sameNameList:Z

    .line 122
    return-object p0
.end method

.method public setSkipRoot(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 67
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->skipRoot:Z

    .line 68
    return-object p0
.end method

.method public setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 3
    .param p1, "value"    # Z

    .line 89
    iget-object v0, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->options:Lcom/stanfy/gsonxml/XmlReader$Options;

    iput-boolean p1, v0, Lcom/stanfy/gsonxml/XmlReader$Options;->namespaces:Z

    .line 90
    return-object p0
.end method

.method public setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 2
    .param p1, "xmlParserCreator"    # Lcom/stanfy/gsonxml/XmlParserCreator;

    .line 45
    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->xmlParserCreator:Lcom/stanfy/gsonxml/XmlParserCreator;

    .line 46
    return-object p0
.end method

.method public wrap(Lcom/google/gson/GsonBuilder;)Lcom/stanfy/gsonxml/GsonXmlBuilder;
    .registers 2
    .param p1, "gsonBuilder"    # Lcom/google/gson/GsonBuilder;

    .line 35
    iput-object p1, p0, Lcom/stanfy/gsonxml/GsonXmlBuilder;->coreBuilder:Lcom/google/gson/GsonBuilder;

    .line 36
    return-object p0
.end method

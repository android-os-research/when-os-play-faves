.class public Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;
.super Ljava/lang/Object;
.source "AccountAuthenticatorCache.java"

# interfaces
.implements Landroid/content/pm/XmlSerializerAndParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountAuthenticatorCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MySerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/content/pm/XmlSerializerAndParser<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/accounts/AuthenticatorDescription;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "type"

    .line 94
    invoke-interface {p1, p0, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromXml(Landroid/util/TypedXmlPullParser;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public writeAsXml(Landroid/accounts/AuthenticatorDescription;Landroid/util/TypedXmlSerializer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object p0, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const/4 p1, 0x0

    const-string/jumbo v0, "type"

    invoke-interface {p2, p1, v0, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public bridge synthetic writeAsXml(Ljava/lang/Object;Landroid/util/TypedXmlSerializer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountAuthenticatorCache$MySerializer;->writeAsXml(Landroid/accounts/AuthenticatorDescription;Landroid/util/TypedXmlSerializer;)V

    return-void
.end method

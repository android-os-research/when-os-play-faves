.class public Lcom/android/server/firewall/IntentFirewall$Rule;
.super Lcom/android/server/firewall/AndFilter;
.source "IntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/IntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rule"
.end annotation


# static fields
.field public static final ATTR_BLOCK:Ljava/lang/String; = "block"

.field public static final ATTR_LOG:Ljava/lang/String; = "log"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final TAG_COMPONENT_FILTER:Ljava/lang/String; = "component-filter"

.field public static final TAG_INTENT_FILTER:Ljava/lang/String; = "intent-filter"


# instance fields
.field public block:Z

.field public log:Z

.field public final mComponentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mIntentFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 430
    invoke-direct {p0}, Lcom/android/server/firewall/AndFilter;-><init>()V

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/firewall/IntentFirewall$Rule-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/firewall/IntentFirewall$Rule;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Z
    .registers 1

    .line 495
    iget-boolean p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    return p0
.end method

.method public getComponentFilter(I)Landroid/content/ComponentName;
    .registers 2

    .line 492
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0
.end method

.method public getComponentFilterCount()I
    .registers 1

    .line 488
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getIntentFilter(I)Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;
    .registers 2

    .line 484
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    return-object p0
.end method

.method public getIntentFilterCount()I
    .registers 1

    .line 480
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getLog()Z
    .registers 1

    .line 499
    iget-boolean p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    return p0
.end method

.method public readChild(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 455
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "intent-filter"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 458
    new-instance v0, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;

    invoke-direct {v0, p0}, Lcom/android/server/firewall/IntentFirewall$FirewallIntentFilter;-><init>(Lcom/android/server/firewall/IntentFirewall$Rule;)V

    .line 459
    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 460
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mIntentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_1b
    const-string v1, "component-filter"

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 462
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 468
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 473
    iget-object p0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->mComponentFilters:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 470
    :cond_39
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid component name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 464
    :cond_50
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Component name must be specified."

    invoke-direct {p0, v1, p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw p0

    .line 475
    :cond_58
    invoke-super {p0, p1}, Lcom/android/server/firewall/FilterList;->readChild(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_5b
    return-void
.end method

.method public bridge synthetic readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/firewall/IntentFirewall$Rule;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;

    move-result-object p0

    return-object p0
.end method

.method public readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/IntentFirewall$Rule;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "block"

    .line 446
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->block:Z

    const-string/jumbo v1, "log"

    .line 447
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/firewall/IntentFirewall$Rule;->log:Z

    .line 449
    invoke-super {p0, p1}, Lcom/android/server/firewall/FilterList;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/FilterList;

    return-object p0
.end method

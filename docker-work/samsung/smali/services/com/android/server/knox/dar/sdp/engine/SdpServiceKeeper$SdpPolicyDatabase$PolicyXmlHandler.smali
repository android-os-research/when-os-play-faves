.class public Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SdpServiceKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolicyXmlHandler"
.end annotation


# instance fields
.field public attrAlias:Ljava/lang/String;

.field public attrPkgName:Ljava/lang/String;

.field public elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

.field public owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

.field public privilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mgetSdpPolicy(Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;)Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->getSdpPolicy()Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;)V
    .registers 4

    .line 725
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 721
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->elementStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    .line 729
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->privilegedApps:Ljava/util/List;

    .line 730
    iput-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 726
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 783
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start characters : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SdpServiceKeeper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p0, "SdpServiceKeeper"

    const-string v0, "end document     : "

    .line 744
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 767
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 768
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "end element      : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdpServiceKeeper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "privileged_app"

    .line 769
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 770
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 771
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->privilegedApps:Ljava/util/List;

    new-instance p2, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    invoke-direct {p2, p3, v0}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    :cond_49
    const-string/jumbo p1, "owner"

    .line 772
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 773
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_73

    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 774
    new-instance p1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iget-object p2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    :cond_73
    :goto_73
    const/4 p1, 0x0

    .line 777
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    .line 778
    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    return-void
.end method

.method public final getSdpPolicy()Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;
    .registers 4

    .line 733
    new-instance v0, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;

    iget-object v1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->mInfo:Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    iget-object v2, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->owner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    iget-object p0, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->privilegedApps:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/knox/dar/sdp/engine/SdpPolicy;-><init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V

    return-object v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p0, "SdpServiceKeeper"

    const-string/jumbo v0, "start document   : "

    .line 740
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 750
    iget-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {p1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "start element    : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SdpServiceKeeper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "privileged_app"

    .line 753
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    const-string/jumbo p1, "owner"

    .line 754
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6f

    .line 756
    :cond_2e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " attribte alias: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "alias"

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " attribte pkg_name: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "pkg_name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrAlias:Ljava/lang/String;

    .line 761
    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/dar/sdp/engine/SdpServiceKeeper$SdpPolicyDatabase$PolicyXmlHandler;->attrPkgName:Ljava/lang/String;

    :cond_6f
    return-void
.end method

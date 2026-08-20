.class public final Lcom/android/server/am/Pageboost$VramdiskXMLParser;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VramdiskXMLParser"
.end annotation


# static fields
.field public static final mFileListPath:Ljava/lang/String; = "/vendor/etc/vramdiskd.xml"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 683
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    .line 685
    :try_start_6
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/vendor/etc/vramdiskd.xml"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_57

    .line 686
    :try_start_d
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 687
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 688
    invoke-virtual {v3, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 689
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    .line 690
    invoke-interface {v4}, Lorg/w3c/dom/Element;->normalize()V

    .line 692
    invoke-interface {v3, p0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_4d

    move v3, v1

    move v4, v3

    .line 693
    :goto_26
    :try_start_26
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v3, v5, :cond_44

    .line 694
    invoke-interface {p0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 695
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 696
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3f
    .catchall {:try_start_26 .. :try_end_3f} :catchall_4a

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 699
    :cond_44
    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_61

    :catch_48
    move v1, v4

    goto :goto_57

    :catchall_4a
    move-exception p0

    move v1, v4

    goto :goto_4e

    :catchall_4d
    move-exception p0

    .line 685
    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_52

    goto :goto_56

    :catchall_52
    move-exception v2

    :try_start_53
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_56
    throw p0
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_57} :catch_57

    .line 700
    :catch_57
    :goto_57
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v2, "failed to getString of /vendor/etc/vramdiskd.xml"

    invoke-static {p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v1

    :goto_61
    if-lez v4, :cond_64

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    :goto_65
    return-object v0
.end method

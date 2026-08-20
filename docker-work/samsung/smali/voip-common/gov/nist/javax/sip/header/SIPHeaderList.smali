.class public abstract Lgov/nist/javax/sip/header/SIPHeaderList;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "SIPHeaderList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljavax/sip/header/Header;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HDR:",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        ">",
        "Lgov/nist/javax/sip/header/SIPHeader;",
        "Ljava/util/List<",
        "THDR;>;",
        "Ljavax/sip/header/Header;"
    }
.end annotation


# static fields
.field private static greylist prettyEncode:Z


# instance fields
.field protected greylist hlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation
.end field

.field private greylist myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "THDR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 51
    const/4 v0, 0x0

    sput-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 2

    .line 64
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 65
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    .line 66
    return-void
.end method

.method protected constructor greylist <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "hname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THDR;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "objclass":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>()V

    .line 78
    iput-object p2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 80
    return-void
.end method

.method public static greylist setPrettyEncode(Z)V
    .registers 1
    .param p0, "flag"    # Z

    .line 660
    sput-boolean p0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    .line 661
    return-void
.end method


# virtual methods
.method public greylist add(ILgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 381
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public bridge synthetic whitelist test-api add(ILjava/lang/Object;)V
    .registers 3

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(ILgov/nist/javax/sip/header/SIPHeader;)V

    return-void
.end method

.method public greylist add(Lgov/nist/javax/sip/header/SIPHeader;Z)V
    .registers 3
    .param p2, "top"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;Z)V"
        }
    .end annotation

    .line 113
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    if-eqz p2, :cond_6

    .line 114
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V

    goto :goto_9

    .line 116
    :cond_6
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    .line 117
    :goto_9
    return-void
.end method

.method public greylist add(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .line 89
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "objectToAdd":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p1, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->add(Lgov/nist/javax/sip/header/SIPHeader;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+THDR;>;)Z"
        }
    .end annotation

    .line 524
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+THDR;>;)Z"
        }
    .end annotation

    .line 520
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist addFirst(Lgov/nist/javax/sip/header/SIPHeader;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "obj":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 536
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 537
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 5

    .line 450
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 452
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 453
    .local v2, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move-object v3, v1

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 454
    .local v1, "retval":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    iput-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 455
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    iput-object v3, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 456
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v1, v3}, Lgov/nist/javax/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    return-object v3

    .line 457
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "retval":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .end local v2    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_24
    move-exception v0

    .line 458
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not clone!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected final greylist clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "THDR;>;)",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "THDR;>;"
        }
    .end annotation

    .line 463
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "hlistToClone":Ljava/util/List;, "Ljava/util/List<THDR;>;"
    if-eqz p1, :cond_1e

    .line 464
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 465
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/sip/header/Header;

    .line 466
    .local v1, "h":Ljavax/sip/header/Header;
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljavax/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    .end local v1    # "h":Ljavax/sip/header/Header;
    goto :goto_6

    .line 469
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_1e
    return-object p0
.end method

.method public greylist concatenate(Lgov/nist/javax/sip/header/SIPHeaderList;Z)V
    .registers 4
    .param p2, "topFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "THDR;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 133
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "other":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    if-nez p2, :cond_6

    .line 134
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 137
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->addAll(ILjava/util/Collection;)Z

    .line 140
    :goto_a
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "header"    # Ljava/lang/Object;

    .line 540
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 529
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist debugDump()Ljava/lang/String;
    .registers 2

    .line 348
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->debugDump(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist debugDump(I)Ljava/lang/String;
    .registers 8
    .param p1, "indentation"    # I

    .line 327
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    .line 328
    new-instance v0, Lgov/nist/javax/sip/header/Indentation;

    invoke-direct {v0, p1}, Lgov/nist/javax/sip/header/Indentation;-><init>(I)V

    invoke-virtual {v0}, Lgov/nist/javax/sip/header/Indentation;->getIndentation()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "indent":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 334
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_45
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov/nist/javax/sip/header/SIPHeader;

    .line 336
    .local v3, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lgov/nist/javax/sip/header/SIPHeader;->debugDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 337
    .end local v3    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    goto :goto_45

    .line 338
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lgov/nist/javax/sip/header/SIPHeaderList;->sprint(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->stringRepresentation:Ljava/lang/String;

    return-object v2
.end method

.method public greylist encode()Ljava/lang/String;
    .registers 2

    .line 151
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 155
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "\r\n"

    if-eqz v0, :cond_1b

    .line 156
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_a1

    .line 161
    :cond_1b
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v2, "WWW-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 162
    const-string v2, "Proxy-Authenticate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 163
    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 164
    const-string v2, "Proxy-Authorization"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    sget-boolean v0, Lgov/nist/javax/sip/header/SIPHeaderList;->prettyEncode:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 166
    const-string v2, "Via"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v2, "Route"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v2, "Record-Route"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8a

    .line 167
    :cond_65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    goto :goto_8a

    .line 176
    :cond_72
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 178
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_a1

    .line 168
    :cond_8a
    :goto_8a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 169
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_90
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    .line 170
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 171
    .local v1, "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 172
    .end local v1    # "sipheader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    goto :goto_90

    .line 173
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :cond_a0
    nop

    .line 181
    :goto_a1
    return-object p1
.end method

.method protected greylist encodeBody()Ljava/lang/String;
    .registers 2

    .line 496
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected greylist encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 6
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .line 500
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 502
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeader;

    .line 503
    .local v1, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    if-eq v1, p0, :cond_2c

    .line 504
    invoke-virtual {v1, p1}, Lgov/nist/javax/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 506
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 507
    iget-object v2, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string v3, "Privacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 508
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 510
    :cond_25
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    goto :goto_4

    .line 516
    .end local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2b
    return-object p1

    .line 503
    .restart local v1    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    :cond_2c
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected circularity in SipHeaderList"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 396
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 397
    return v0

    .line 399
    :cond_4
    instance-of v1, p1, Lgov/nist/javax/sip/header/SIPHeaderList;

    const/4 v2, 0x0

    if-eqz v1, :cond_25

    .line 400
    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 401
    .local v1, "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v4, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne v3, v4, :cond_13

    .line 402
    return v0

    .line 403
    :cond_13
    if-nez v3, :cond_20

    .line 404
    if-eqz v4, :cond_1f

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1e

    goto :goto_1f

    :cond_1e
    move v0, v2

    :cond_1f
    :goto_1f
    return v0

    .line 405
    :cond_20
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 407
    .end local v1    # "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_25
    return v2
.end method

.method public greylist get(I)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api get(I)Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->get(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p1

    return-object p1
.end method

.method public greylist getFirst()Ljavax/sip/header/Header;
    .registers 3

    .line 212
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_15

    .line 215
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/Header;

    return-object v0

    .line 213
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getHeaderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    return-object v0
.end method

.method public greylist getHeadersAsEncodedStrings()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 195
    .local v0, "retval":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 196
    .local v1, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 197
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/sip/header/Header;

    .line 198
    .local v2, "sipheader":Ljavax/sip/header/Header;
    invoke-interface {v2}, Ljavax/sip/header/Header;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .end local v2    # "sipheader":Ljavax/sip/header/Header;
    goto :goto_b

    .line 202
    :cond_1f
    return-object v0
.end method

.method public greylist getLast()Ljavax/sip/header/Header;
    .registers 3

    .line 224
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_1a

    .line 226
    :cond_b
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/sip/header/Header;

    return-object v0

    .line 225
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist getMyClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "THDR;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    return-object v0
.end method

.method public greylist getName()Ljava/lang/String;
    .registers 2

    .line 60
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 644
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public greylist indexOf(Lgov/nist/core/GenericObject;)I
    .registers 3
    .param p1, "gobj"    # Lgov/nist/core/GenericObject;

    .line 367
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 562
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 244
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public greylist isHeaderList()Z
    .registers 2

    .line 486
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "THDR;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 584
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "THDR;>;"
        }
    .end annotation

    .line 254
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "THDR;>;"
        }
    .end annotation

    .line 274
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public greylist match(Lgov/nist/javax/sip/header/SIPHeaderList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "*>;)Z"
        }
    .end annotation

    .line 415
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "template":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<*>;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 416
    return v0

    .line 417
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 418
    return v2

    .line 419
    :cond_14
    move-object v1, p1

    .line 420
    .local v1, "that":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<Lgov/nist/javax/sip/header/SIPHeader;>;"
    iget-object v3, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v4, v1, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-ne v3, v4, :cond_1c

    .line 421
    return v0

    .line 422
    :cond_1c
    if-nez v3, :cond_1f

    .line 423
    return v2

    .line 426
    :cond_1f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 427
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov/nist/javax/sip/header/SIPHeader;

    .line 429
    .local v4, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    const/4 v5, 0x0

    .line 430
    .local v5, "found":Z
    iget-object v6, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 431
    .local v6, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_36
    nop

    .line 430
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4a

    if-nez v5, :cond_4a

    .line 432
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov/nist/javax/sip/header/SIPHeader;

    .line 433
    .local v7, "sipHeader1":Lgov/nist/javax/sip/header/SIPHeader;
    invoke-virtual {v7, v4}, Lgov/nist/javax/sip/header/SIPHeader;->match(Ljava/lang/Object;)Z

    move-result v5

    .line 434
    .end local v7    # "sipHeader1":Lgov/nist/javax/sip/header/SIPHeader;
    goto :goto_36

    .line 435
    .end local v6    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :cond_4a
    if-nez v5, :cond_4d

    .line 436
    return v2

    .line 437
    .end local v4    # "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;
    .end local v5    # "found":Z
    :cond_4d
    goto :goto_23

    .line 438
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov/nist/javax/sip/header/SIPHeader;>;"
    :cond_4e
    return v0
.end method

.method public greylist remove(I)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .line 608
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;->remove(I)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p1

    return-object p1
.end method

.method public greylist remove(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .line 302
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "obj":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 303
    const/4 v0, 0x0

    return v0

    .line 305
    :cond_a
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 597
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 616
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist removeFirst()V
    .registers 3

    .line 281
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_e

    .line 282
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 284
    :cond_e
    return-void
.end method

.method public greylist removeLast()V
    .registers 3

    .line 290
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_13

    .line 291
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 292
    :cond_13
    return-void
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 625
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public greylist set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;
    .registers 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)THDR;"
        }
    .end annotation

    .line 654
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p2, "sipHeader":Lgov/nist/javax/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 49
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    check-cast p2, Lgov/nist/javax/sip/header/SIPHeader;

    invoke-virtual {p0, p1, p2}, Lgov/nist/javax/sip/header/SIPHeaderList;->set(ILgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeader;

    move-result-object p1

    return-object p1
.end method

.method protected greylist setMyClass(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "THDR;>;)V"
        }
    .end annotation

    .line 316
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "cl":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    iput-object p1, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 317
    return-void
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 476
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subList(II)Ljava/util/List;
    .registers 4
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "THDR;>;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 357
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 665
    .local p0, "this":Lgov/nist/javax/sip/header/SIPHeaderList;, "Lgov/nist/javax/sip/header/SIPHeaderList<THDR;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

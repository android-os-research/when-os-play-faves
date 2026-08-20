.class public Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParentChildSessionMap"
.end annotation


# instance fields
.field public final mSessionCreationComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            "Ljava/util/TreeSet<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1xmpqIzXgSgL9JBwqVOa_V0fT_M(Lcom/android/server/pm/PackageInstallerSession;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->lambda$new$1(Lcom/android/server/pm/PackageInstallerSession;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QYLURLl7_-3kKJrb46t4_FpjdQg(Lcom/android/server/pm/PackageInstallerSession;)J
    .registers 3

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->lambda$new$0(Lcom/android/server/pm/PackageInstallerSession;)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .registers 3

    .line 1802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1797
    new-instance v0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda0;-><init>()V

    .line 1798
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap$$ExternalSyntheticLambda1;-><init>()V

    .line 1800
    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionCreationComparator:Ljava/util/Comparator;

    .line 1803
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/pm/PackageInstallerSession;)J
    .registers 3

    if-eqz p0, :cond_5

    .line 1799
    iget-wide v0, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    goto :goto_7

    :cond_5
    const-wide/16 v0, -0x1

    :goto_7
    return-wide v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/pm/PackageInstallerSession;)I
    .registers 1

    if-eqz p0, :cond_5

    .line 1800
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    goto :goto_6

    :cond_5
    const/4 p0, -0x1

    :goto_6
    return p0
.end method


# virtual methods
.method public final addChildSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 3

    .line 1818
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addParentSession(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1819
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {p0, p2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/TreeSet;

    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addParentSession(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4

    .line 1811
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1812
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    new-instance v1, Ljava/util/TreeSet;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionCreationComparator:Ljava/util/Comparator;

    invoke-direct {v1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-void
.end method

.method public addSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4

    .line 1824
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1825
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addChildSession(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_d

    .line 1827
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->addParentSession(Lcom/android/server/pm/PackageInstallerSession;)V

    :goto_d
    return-void
.end method

.method public containsSession()Z
    .registers 1

    .line 1807
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 1832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " install sessions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1836
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$ParentChildSessionMap;->mSessionMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1837
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v1, :cond_52

    .line 1839
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1841
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1842
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1845
    :cond_52
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_83

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 1846
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Child "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1848
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_5c

    .line 1851
    :cond_83
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_21

    .line 1854
    :cond_87
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1855
    invoke-virtual {p2}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.class public final Lcom/android/server/pm/Policy$PolicyBuilder;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyBuilder"
.end annotation


# instance fields
.field public final mCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field public final mPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSeinfo:Ljava/lang/String;

.field public mTFlag:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCerts(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPkgMap(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSeinfo(Lcom/android/server/pm/Policy$PolicyBuilder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTFlag(Lcom/android/server/pm/Policy$PolicyBuilder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mTFlag:Z

    return p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    .line 813
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 815
    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mTFlag:Z

    return-void
.end method


# virtual methods
.method public addInnerPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 4

    .line 880
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 884
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 889
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 890
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    .line 892
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Conflicting seinfo value found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 895
    :cond_25
    :goto_25
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    .line 885
    :cond_2b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid seinfo value "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 886
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 881
    :cond_42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package name "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 882
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addInnerTPackageMapOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 4

    .line 902
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 906
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "trustonicpartner"

    .line 911
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/4 v0, 0x1

    .line 912
    iput-boolean v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mTFlag:Z

    .line 913
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 914
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_31

    .line 916
    :cond_29
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Conflicting seinfo value found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 918
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-object p0

    .line 907
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid seinfo value "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 908
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 903
    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid package name "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 904
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addSignature(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 4

    if-eqz p1, :cond_d

    .line 835
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mCerts:Ljava/util/Set;

    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, p1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 831
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid signature value "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 832
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public build()Lcom/android/server/pm/Policy;
    .registers 3

    .line 959
    new-instance v0, Lcom/android/server/pm/Policy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Policy;-><init>(Lcom/android/server/pm/Policy$PolicyBuilder;Lcom/android/server/pm/Policy-IA;)V

    .line 961
    invoke-static {v0}, Lcom/android/server/pm/Policy;->-$$Nest$fgetmCerts(Lcom/android/server/pm/Policy;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_11

    return-object v0

    .line 963
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing certs with signer tag. Expecting at least one."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setGlobalSeinfoOrThrow(Ljava/lang/String;)Lcom/android/server/pm/Policy$PolicyBuilder;
    .registers 3

    .line 851
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Policy$PolicyBuilder;->validateValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 856
    iget-object v0, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 858
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Duplicate seinfo tag found"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 861
    :cond_19
    :goto_19
    iput-object p1, p0, Lcom/android/server/pm/Policy$PolicyBuilder;->mSeinfo:Ljava/lang/String;

    return-object p0

    .line 852
    :cond_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid seinfo value "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 853
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final validateValue(Ljava/lang/String;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string v0, "\\A[\\.\\w]+\\z"

    .line 936
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_d

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

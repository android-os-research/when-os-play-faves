.class public Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;
.super Ljava/lang/Object;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicCodeFile"
.end annotation


# instance fields
.field public final mFileType:C

.field public final mLoadingPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserId:I


# direct methods
.method public varargs constructor <init>(CI[Ljava/lang/String;)V
    .registers 4

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-char p1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    .line 619
    iput p2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 620
    new-instance p1, Ljava/util/HashSet;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;)V
    .registers 3

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iget-char v0, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    iput-char v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    .line 625
    iget v0, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    iput v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    .line 626
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;)V

    return-void
.end method

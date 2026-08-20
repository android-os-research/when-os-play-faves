.class public final Lcom/android/server/pm/CommitRequest;
.super Ljava/lang/Object;
.source "CommitRequest.java"


# instance fields
.field public final mAllUsers:[I

.field public final mReconciledPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;[I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/ReconciledPackage;",
            ">;[I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/pm/CommitRequest;->mReconciledPackages:Ljava/util/Map;

    .line 33
    iput-object p2, p0, Lcom/android/server/pm/CommitRequest;->mAllUsers:[I

    return-void
.end method

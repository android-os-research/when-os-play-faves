.class public Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;
.super Ljava/lang/Object;
.source "SliceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/slice/SliceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageMatchingCache"
.end annotation


# instance fields
.field public mCurrentPkg:Ljava/lang/String;

.field public final mPkgSource:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mPkgSource:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 650
    :cond_4
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    return p0

    .line 654
    :cond_e
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mPkgSource:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$PackageMatchingCache;->mCurrentPkg:Ljava/lang/String;

    .line 655
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.class public Lcom/android/server/om/wallpapertheme/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mUidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/Uid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Package;->mPackageName:Ljava/lang/String;

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/wallpapertheme/Package;->mUidList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addUid(Lcom/android/server/om/wallpapertheme/Uid;)V
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Package;->mUidList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Package;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUidList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/om/wallpapertheme/Uid;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/Package;->mUidList:Ljava/util/List;

    return-object p0
.end method

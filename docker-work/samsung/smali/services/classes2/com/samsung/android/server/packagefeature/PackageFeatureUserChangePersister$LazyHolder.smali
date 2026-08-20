.class public Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyHolder;
.super Ljava/lang/Object;
.source "PackageFeatureUserChangePersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sPackageFeatureUserChangePersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 90
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister-IA;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyHolder;->sPackageFeatureUserChangePersister:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

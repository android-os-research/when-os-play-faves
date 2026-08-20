.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;
.super Ljava/lang/Object;
.source "PackageFeatureControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl;-><init>(Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl-IA;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureControllerImpl$LazyHolder;->sController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

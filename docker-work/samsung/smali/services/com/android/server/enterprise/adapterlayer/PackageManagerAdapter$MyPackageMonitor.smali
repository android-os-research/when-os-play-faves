.class public abstract Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "MyPackageMonitor"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 509
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public isPackageDisappearing(Ljava/lang/String;)I
    .registers 2

    .line 520
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isPackageModified(Ljava/lang/String;)Z
    .registers 2

    .line 524
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public onSomePackagesChanged()V
    .registers 1

    return-void
.end method

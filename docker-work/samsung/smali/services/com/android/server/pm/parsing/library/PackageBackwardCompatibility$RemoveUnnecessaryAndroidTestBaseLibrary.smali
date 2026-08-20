.class public Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility$RemoveUnnecessaryAndroidTestBaseLibrary;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "PackageBackwardCompatibility.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/library/PackageBackwardCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveUnnecessaryAndroidTestBaseLibrary"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 193
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 3

    const-string p0, "android.test.base"

    .line 198
    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    return-void
.end method

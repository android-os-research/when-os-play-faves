.class public Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "OrgApacheHttpLegacyUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method

.method public static apkTargetsApiLevelLessThanOrEqualToOMR1(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 2

    .line 36
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result p0

    const/16 v0, 0x1c

    if-ge p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 3

    .line 44
    invoke-static {p1}, Lcom/android/server/pm/parsing/library/OrgApacheHttpLegacyUpdater;->apkTargetsApiLevelLessThanOrEqualToOMR1(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string/jumbo p2, "org.apache.http.legacy"

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->prefixRequiredLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

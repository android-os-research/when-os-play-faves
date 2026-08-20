.class public Lcom/android/server/pm/parsing/library/ComGoogleAndroidMapsUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "ComGoogleAndroidMapsUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final LIBRARY_NAME:Ljava/lang/String; = "com.google.android.maps"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePackage(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Z)V
    .registers 3

    const-string p0, "com.google.android.maps"

    .line 33
    invoke-interface {p1, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    .line 34
    invoke-interface {p1, p0}, Lcom/android/server/pm/parsing/pkg/ParsedPackage;->removeUsesOptionalLibrary(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/ParsedPackage;

    return-void
.end method

.class public Lcom/android/server/pm/parsing/library/AndroidNetIpSecIkeUpdater;
.super Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;
.source "AndroidNetIpSecIkeUpdater.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final LIBRARY_NAME:Ljava/lang/String; = "android.net.ipsec.ike"


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

    const-string p0, "android.net.ipsec.ike"

    .line 33
    invoke-static {p1, p0}, Lcom/android/server/pm/parsing/library/PackageSharedLibraryUpdater;->removeLibrary(Lcom/android/server/pm/parsing/pkg/ParsedPackage;Ljava/lang/String;)V

    return-void
.end method

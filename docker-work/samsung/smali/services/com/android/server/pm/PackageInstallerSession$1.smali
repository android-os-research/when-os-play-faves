.class public Lcom/android/server/pm/PackageInstallerSession$1;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4

    .line 734
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 735
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ".removed"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    return v0

    .line 736
    :cond_15
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1c

    return v0

    .line 737
    :cond_1c
    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->isFsveritySignatureFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_23

    return v0

    .line 738
    :cond_23
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->isDigestOrDigestSignatureFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_2a

    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.class public Lcom/android/server/pm/PackageInstallerSession$FileEntry;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileEntry"
.end annotation


# instance fields
.field public final mFile:Landroid/content/pm/InstallationFile;

.field public final mIndex:I


# direct methods
.method public constructor <init>(ILandroid/content/pm/InstallationFile;)V
    .registers 3

    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    .line 458
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 471
    instance-of v0, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 474
    :cond_6
    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 475
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v0}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v2}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v2

    if-ne v0, v2, :cond_29

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    .line 476
    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p1}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method public getFile()Landroid/content/pm/InstallationFile;
    .registers 1

    .line 466
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    .line 462
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mIndex:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 481
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {v1}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->mFile:Landroid/content/pm/InstallationFile;

    invoke-virtual {p0}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

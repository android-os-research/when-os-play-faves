.class public Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;
.super Ljava/lang/Object;
.source "PackageConfigPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageConfigPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeletePackageItem"
.end annotation


# instance fields
.field public final mPackageName:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    iput p1, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mUserId:I

    .line 395
    iput-object p2, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public process()V
    .registers 5

    .line 400
    iget v0, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mUserId:I

    invoke-static {v0}, Lcom/android/server/wm/PackageConfigPersister;->-$$Nest$smgetUserConfigsDir(I)Ljava/io/File;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    .line 404
    :cond_d
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/PackageConfigPersister$DeletePackageItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_config.xml"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 406
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result p0

    if-eqz p0, :cond_33

    .line 407
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    :cond_33
    return-void
.end method

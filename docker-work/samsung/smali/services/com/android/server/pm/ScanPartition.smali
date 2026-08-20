.class public Lcom/android/server/pm/ScanPartition;
.super Landroid/content/pm/PackagePartitions$SystemPartition;
.source "ScanPartition.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# instance fields
.field public final scanFlag:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 42
    invoke-static {p1}, Lcom/android/server/pm/ScanPartition;->scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/server/pm/ScanPartition;I)V
    .registers 4

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackagePartitions$SystemPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 53
    iget p1, p2, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    or-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    return-void
.end method

.method public static scanFlagForPartition(Landroid/content/pm/PackagePartitions$SystemPartition;)I
    .registers 4

    .line 57
    iget v0, p0, Landroid/content/pm/PackagePartitions$SystemPartition;->type:I

    if-eqz v0, :cond_3d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_34

    const/4 v1, 0x4

    if-eq v0, v1, :cond_31

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    const/high16 p0, 0x200000

    return p0

    .line 71
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to determine scan flag for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    const/high16 p0, 0x100000

    return p0

    :cond_34
    const/high16 p0, 0x40000

    return p0

    :cond_37
    const/high16 p0, 0x400000

    return p0

    :cond_3a
    const/high16 p0, 0x80000

    return p0

    :cond_3d
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/ScanPartition;->scanFlag:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

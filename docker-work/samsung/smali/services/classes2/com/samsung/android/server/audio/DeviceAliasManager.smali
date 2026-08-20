.class public Lcom/samsung/android/server/audio/DeviceAliasManager;
.super Ljava/lang/Object;
.source "DeviceAliasManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;,
        Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DeviceAliasManager"


# instance fields
.field public final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 8

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    .line 38
    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v5, 0x2

    new-array v6, v5, [I

    fill-array-data v6, :array_62

    invoke-direct {v1, v3, v6}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    new-instance v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    new-array v3, v2, [I

    aput v5, v3, v4

    new-array v5, v5, [I

    fill-array-data v5, :array_6a

    invoke-direct {v1, v3, v5}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    new-array v1, v0, [I

    move v3, v4

    :goto_36
    if-ge v3, v0, :cond_41

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3c

    goto :goto_3e

    .line 51
    :cond_3c
    aput v3, v1, v3

    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 53
    :cond_41
    iget-object v0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    new-array v5, v2, [I

    const/high16 v6, 0x20000000

    aput v6, v5, v4

    invoke-direct {v3, v5, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    const/16 v5, 0x80

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    new-instance v0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    new-array v2, v2, [I

    aput v5, v2, v4

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;-><init>([I[I)V

    invoke-virtual {p0, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :array_62
    .array-data 4
        0x0
        0x8
    .end array-data

    :array_6a
    .array-data 4
        0x0
        0x8
    .end array-data
.end method


# virtual methods
.method public apply(IILcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;)V
    .registers 8

    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    if-nez p0, :cond_b

    return-void

    .line 68
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mAliases:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1f

    aget v2, p1, v1

    .line 69
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->isExcludedStream(I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 70
    invoke-interface {p3, v2}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAliasRunner;->run(I)V

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1f
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "\nDevice Aliases:"

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 78
    :goto_6
    iget-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 79
    iget-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/samsung/android/server/audio/DeviceAliasManager;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;

    if-eqz v1, :cond_42

    .line 83
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->dump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 86
    :cond_45
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

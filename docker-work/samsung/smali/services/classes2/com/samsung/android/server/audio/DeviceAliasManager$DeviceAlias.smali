.class public Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;
.super Ljava/lang/Object;
.source "DeviceAliasManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/DeviceAliasManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceAlias"
.end annotation


# instance fields
.field public mAliases:[I

.field public mExcludeStreams:I


# direct methods
.method public constructor <init>([I[I)V
    .registers 3

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mAliases:[I

    .line 95
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->convertBitStream([I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mExcludeStreams:I

    return-void
.end method


# virtual methods
.method public final varargs convertBitStream([I)I
    .registers 5

    const/4 p0, 0x0

    move v0, p0

    .line 100
    :goto_2
    array-length v1, p1

    if-ge p0, v1, :cond_e

    .line 101
    aget v1, p1, p0

    const/4 v2, 0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_e
    return v0
.end method

.method public dump()Ljava/lang/String;
    .registers 8

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Alias: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mAliases:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_c
    const-string v5, " "

    if-ge v4, v2, :cond_1f

    aget v6, v1, v4

    .line 113
    invoke-static {v6}, Landroid/media/AudioSystem;->getDeviceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_1f
    const-string v1, "\n"

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Exclude Streams: "

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    :goto_29
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    if-ge v3, v1, :cond_3e

    .line 119
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->isExcludedStream(I)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 120
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 123
    :cond_3e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isExcludedStream(I)Z
    .registers 3

    .line 107
    iget p0, p0, Lcom/samsung/android/server/audio/DeviceAliasManager$DeviceAlias;->mExcludeStreams:I

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

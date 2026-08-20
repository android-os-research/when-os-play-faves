.class synthetic Lcom/samsung/android/sume/MediaBuffer$2;
.super Ljava/lang/Object;
.source "MediaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/MediaBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$sume$BufferType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 592
    invoke-static {}, Lcom/samsung/android/sume/BufferType;->values()[Lcom/samsung/android/sume/BufferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer$2;->$SwitchMap$com$samsung$android$sume$BufferType:[I

    :try_start_9
    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/BufferType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer$2;->$SwitchMap$com$samsung$android$sume$BufferType:[I

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    invoke-virtual {v1}, Lcom/samsung/android/sume/BufferType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method

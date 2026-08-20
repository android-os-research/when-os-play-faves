.class public final Lcom/android/server/PinnerService$PinRangeSourceStream;
.super Lcom/android/server/PinnerService$PinRangeSource;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PinRangeSourceStream"
.end annotation


# instance fields
.field public mDone:Z

.field public final mStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    .line 945
    invoke-direct {p0, v0}, Lcom/android/server/PinnerService$PinRangeSource;-><init>(Lcom/android/server/PinnerService$PinRangeSource-IA;)V

    const/4 v0, 0x0

    .line 943
    iput-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 946
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public read(Lcom/android/server/PinnerService$PinRange;)Z
    .registers 4

    .line 951
    iget-boolean v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_18

    .line 953
    :try_start_5
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->start:I

    .line 954
    iget-object v0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/PinnerService$PinRange;->length:I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_18

    .line 956
    :catch_16
    iput-boolean v1, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    .line 959
    :cond_18
    :goto_18
    iget-boolean p0, p0, Lcom/android/server/PinnerService$PinRangeSourceStream;->mDone:Z

    xor-int/2addr p0, v1

    return p0
.end method

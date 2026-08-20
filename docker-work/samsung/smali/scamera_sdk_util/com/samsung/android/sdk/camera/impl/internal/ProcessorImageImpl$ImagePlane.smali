.class Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;
.super Landroid/media/Image$Plane;
.source "ProcessorImageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePlane"
.end annotation


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mPixelStride:I

.field private mRowStride:I

.field final synthetic this$0:Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;Ljava/nio/ByteBuffer;II)V
    .registers 5
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "rowStride"    # I
    .param p4, "pixelStride"    # I

    .line 170
    iput-object p1, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->this$0:Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 171
    iput-object p2, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 172
    iput p3, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mRowStride:I

    .line 173
    iput p4, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mPixelStride:I

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->clear()V

    return-void
.end method

.method private clear()V
    .registers 2

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mRowStride:I

    .line 179
    iput v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mPixelStride:I

    .line 180
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->this$0:Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    # invokes: Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V
    invoke-static {v0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->access$100(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getPixelStride()I
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->this$0:Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    # invokes: Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V
    invoke-static {v0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->access$300(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;)V

    .line 197
    iget v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mPixelStride:I

    return v0
.end method

.method public getRowStride()I
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->this$0:Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    # invokes: Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V
    invoke-static {v0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->access$200(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;)V

    .line 191
    iget v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->mRowStride:I

    return v0
.end method

.class Lcom/att/iqi/lib/Metric$2;
.super Lcom/att/iqi/lib/Metric;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/att/iqi/lib/Metric;->a(Ljava/lang/String;Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/nio/ByteBuffer;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.class public Lcom/android/server/hdmi/HdmiUtils$CodecSad;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CodecSad"
.end annotation


# instance fields
.field public final audioCodec:I

.field public final sad:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 775
    iput p1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 776
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .registers 3

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    iput p1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 771
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 781
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 782
    check-cast p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    .line 783
    iget v0, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    if-ne v0, v2, :cond_18

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 784
    invoke-static {p1, p0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 791
    iget v1, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->audioCodec:I

    .line 792
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiUtils$CodecSad;->sad:[B

    .line 793
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 791
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

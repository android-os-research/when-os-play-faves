.class public Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;
.super Ljava/lang/Object;
.source "ImgpFilterAdapter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# instance fields
.field private final blacklist imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/ImgpFilter;)V
    .registers 2
    .param p1, "imgpFilter"    # Lcom/samsung/android/sume/core/filter/ImgpFilter;

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    .line 14
    return-void
.end method


# virtual methods
.method public blacklist getImgpFilter()Lcom/samsung/android/sume/core/filter/ImgpFilter;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    return-object v0
.end method

.method public blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/samsung/android/sume/solution/filter/ImgpFilterAdapter;->imgpFilter:Lcom/samsung/android/sume/core/filter/ImgpFilter;

    invoke-static {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->emptyOf(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sume/core/filter/ImgpFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

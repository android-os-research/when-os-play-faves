.class Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;
.super Ljava/io/FilterInputStream;
.source "TempFileCachingStreamBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;->getInputView()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;Ljava/io/InputStream;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;->this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    .line 51
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;->this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;->-$$Nest$fgetf(Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :catchall_d
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge$1;->this$0:Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;

    invoke-static {p0}, Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;->-$$Nest$fgetf(Lorg/apache/commons/compress/compressors/pack200/TempFileCachingStreamBridge;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 52
    throw v0
.end method

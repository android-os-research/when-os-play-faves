.class Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;
.super Ljava/lang/Object;
.source "SevenZFile.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->getStatisticsForCurrentEntry()Lorg/apache/commons/compress/utils/InputStreamStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)V
    .registers 2

    .line 1118
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCompressedCount()J
    .registers 3

    .line 1121
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->-$$Nest$fgetcompressedBytesReadFromCurrentEntry(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUncompressedCount()J
    .registers 3

    .line 1125
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile$2;->this$0:Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;

    invoke-static {p0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;->-$$Nest$fgetuncompressedBytesReadFromCurrentEntry(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;)J

    move-result-wide v0

    return-wide v0
.end method

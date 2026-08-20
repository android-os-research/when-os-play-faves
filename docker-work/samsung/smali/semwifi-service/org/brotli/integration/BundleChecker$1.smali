.class Lorg/brotli/integration/BundleChecker$1;
.super Ljava/io/FilterInputStream;
.source "BundleChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/brotli/integration/BundleChecker;->decompressAndCalculateCrc(Ljava/util/zip/ZipInputStream;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/brotli/integration/BundleChecker;


# direct methods
.method constructor <init>(Lorg/brotli/integration/BundleChecker;Ljava/io/InputStream;)V
    .registers 3

    .line 43
    iput-object p1, p0, Lorg/brotli/integration/BundleChecker$1;->this$0:Lorg/brotli/integration/BundleChecker;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

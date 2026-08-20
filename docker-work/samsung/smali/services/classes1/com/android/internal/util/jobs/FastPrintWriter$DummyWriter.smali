.class public Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;
.super Ljava/io/Writer;
.source "FastPrintWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/jobs/FastPrintWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyWriter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>()V

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

    .line 39
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Shouldn\'t be here"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p0
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method

.method public write([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;->close()V

    return-void
.end method

.class public interface abstract Lcom/android/commands/incident/Section;
.super Ljava/lang/Object;
.source "Section.java"


# virtual methods
.method public abstract run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/incident/ExecutionException;
        }
    .end annotation
.end method

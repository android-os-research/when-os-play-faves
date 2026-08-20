.class Lcom/android/uiautomator/core/Tracer$FileSink;
.super Ljava/lang/Object;
.source "Tracer.java"

# interfaces
.implements Lcom/android/uiautomator/core/Tracer$TracerSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/uiautomator/core/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileSink"
.end annotation


# instance fields
.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mOut:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/uiautomator/core/Tracer;


# direct methods
.method public constructor <init>(Lcom/android/uiautomator/core/Tracer;Ljava/io/File;)V
    .registers 5
    .param p2, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->this$0:Lcom/android/uiautomator/core/Tracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance p1, Ljava/io/PrintWriter;

    invoke-direct {p1, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    .line 68
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 69
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 77
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mOut:Ljava/io/PrintWriter;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/uiautomator/core/Tracer$FileSink;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string v2, "%s %s\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 73
    return-void
.end method

.class public Lcom/android/server/SKLogger$SKFormatter;
.super Ljava/util/logging/Formatter;
.source "SKLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SKLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SKFormatter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/SKLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/SKLogger;)V
    .registers 2

    .line 164
    iput-object p1, p0, Lcom/android/server/SKLogger$SKFormatter;->this$0:Lcom/android/server/SKLogger;

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/SKLogger;Lcom/android/server/SKLogger$SKFormatter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/SKLogger$SKFormatter;-><init>(Lcom/android/server/SKLogger;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 2

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

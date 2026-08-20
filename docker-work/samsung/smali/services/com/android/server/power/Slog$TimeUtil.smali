.class public Lcom/android/server/power/Slog$TimeUtil;
.super Ljava/lang/Object;
.source "Slog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/Slog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeUtil"
.end annotation


# static fields
.field public static final FORMATTER:Ljava/time/format/DateTimeFormatter;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 245
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/Slog$TimeUtil;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentTimeToLoggingFormat()Ljava/lang/String;
    .registers 2

    .line 253
    invoke-static {}, Lcom/android/server/power/Slog$TimeUtil;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/Slog$TimeUtil;->FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, v1}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static now()Ljava/time/LocalDateTime;
    .registers 1

    .line 249
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper$1;
.super Ljava/util/logging/Formatter;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6444
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 4

    .line 6447
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->-$$Nest$sfgetdate()Ljava/util/Date;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 6449
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6450
    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->-$$Nest$sfgetformatter()Landroid/icu/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Lcom/android/server/appwidget/AppWidgetServiceImpl$AppWidgetLogWrapper;->-$$Nest$sfgetdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6451
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6452
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

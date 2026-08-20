.class public Lcom/android/server/dreams/DreamUiEventLoggerImpl;
.super Ljava/lang/Object;
.source "DreamUiEventLoggerImpl.java"

# interfaces
.implements Lcom/android/server/dreams/DreamUiEventLogger;


# instance fields
.field public final mLoggableDreamPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Ljava/lang/String;)V
    .registers 5

    .line 37
    invoke-interface {p1}, Lcom/android/internal/logging/UiEventLogger$UiEventEnum;->getId()I

    move-result p1

    if-gtz p1, :cond_7

    return-void

    .line 42
    :cond_7
    iget-object v0, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    move p0, v1

    goto :goto_18

    :cond_12
    iget-object p0, p0, Lcom/android/server/dreams/DreamUiEventLoggerImpl;->mLoggableDreamPrefix:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    :goto_18
    const/16 v0, 0x1c1

    if-eqz p0, :cond_1d

    goto :goto_20

    :cond_1d
    const-string/jumbo p2, "other"

    .line 44
    :goto_20
    invoke-static {v0, v1, p1, v1, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIILjava/lang/String;)V

    return-void
.end method

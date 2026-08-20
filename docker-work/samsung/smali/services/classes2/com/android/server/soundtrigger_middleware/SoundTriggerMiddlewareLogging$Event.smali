.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# instance fields
.field public final message:Ljava/lang/String;

.field public final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->timestamp:J

    .line 374
    iput-object p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$Event;-><init>(Ljava/lang/String;)V

    return-void
.end method

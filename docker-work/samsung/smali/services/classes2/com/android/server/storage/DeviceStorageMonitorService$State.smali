.class public Lcom/android/server/storage/DeviceStorageMonitorService$State;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# static fields
.field public static final LEVEL_EXHAUSTION:I = 0x1

.field public static final LEVEL_FULL:I = 0x3

.field public static final LEVEL_LOW:I = 0x2

.field public static final LEVEL_NORMAL:I = 0x0

.field public static final LEVEL_UNKNOWN:I = -0x1


# instance fields
.field public lastUsableBytes:J

.field public level:I


# direct methods
.method public static bridge synthetic -$$Nest$smisEntering(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isEntering(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisLeaving(III)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->isLeaving(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smlevelToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->levelToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    const-wide v0, 0x7fffffffffffffffL

    .line 148
    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService$State-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>()V

    return-void
.end method

.method public static isEntering(III)Z
    .registers 3

    if-lt p2, p0, :cond_9

    if-lt p1, p0, :cond_7

    const/4 p0, -0x1

    if-ne p1, p0, :cond_9

    :cond_7
    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static isLeaving(III)Z
    .registers 3

    if-ge p2, p0, :cond_9

    if-ge p1, p0, :cond_7

    const/4 p0, -0x1

    if-ne p1, p0, :cond_9

    :cond_7
    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public static levelToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1f

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    const-string p0, "FULL"

    return-object p0

    :cond_16
    const-string p0, "LOW"

    return-object p0

    :cond_19
    const-string p0, "EXHAUSTION"

    return-object p0

    :cond_1c
    const-string p0, "NORMAL"

    return-object p0

    :cond_1f
    const-string p0, "UNKNOWN"

    return-object p0
.end method

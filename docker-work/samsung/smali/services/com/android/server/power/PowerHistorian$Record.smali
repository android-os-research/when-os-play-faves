.class public abstract Lcom/android/server/power/PowerHistorian$Record;
.super Ljava/lang/Object;
.source "PowerHistorian.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerHistorian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Record"
.end annotation


# static fields
.field public static final sDumpDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public final mRecordedTimeMillis:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 157
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/power/PowerHistorian$Record;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    return-void
.end method


# virtual methods
.method public getRecordedTimeMillis()J
    .registers 3

    .line 167
    iget-wide v0, p0, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 172
    sget-object v0, Lcom/android/server/power/PowerHistorian$Record;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/power/PowerHistorian$Record;->mRecordedTimeMillis:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

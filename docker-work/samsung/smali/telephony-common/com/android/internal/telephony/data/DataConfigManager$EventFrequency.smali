.class public Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;
.super Ljava/lang/Object;
.source "DataConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/DataConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventFrequency"
.end annotation


# instance fields
.field public final blacklist eventNumOccurrence:I

.field public final blacklist timeWindow:J


# direct methods
.method public constructor blacklist <init>(JI)V
    .registers 4

    .line 954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 955
    iput-wide p1, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 956
    iput p3, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 961
    iget-wide v1, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->timeWindow:J

    .line 962
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/internal/telephony/data/DataConfigManager$EventFrequency;->eventNumOccurrence:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "EventFrequency=[timeWindow=%d, eventNumOccurrence=%d]"

    .line 961
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

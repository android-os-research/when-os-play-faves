.class public final Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;
.super Ljava/lang/Object;
.source "SemOverheatHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sdhmssdk/SemOverheatHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Builder"
.end annotation


# instance fields
.field private beginTime:J

.field private endTime:J

.field private overheatType:I

.field private semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;


# direct methods
.method static bridge synthetic -$$Nest$fgetbeginTime(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->beginTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetendTime(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->endTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetoverheatType(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)I
    .registers 1

    iget p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->overheatType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsemOverheatReason(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)Lcom/sec/android/sdhmssdk/SemOverheatReason;
    .registers 1

    iget-object p0, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    return-object p0
.end method

.method protected constructor <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method beginTime(J)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 189
    iput-wide p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->beginTime:J

    .line 190
    return-object p0
.end method

.method build()Lcom/sec/android/sdhmssdk/SemOverheatHistory;
    .registers 2

    .line 209
    new-instance v0, Lcom/sec/android/sdhmssdk/SemOverheatHistory;

    invoke-direct {v0, p0}, Lcom/sec/android/sdhmssdk/SemOverheatHistory;-><init>(Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;)V

    return-object v0
.end method

.method endTime(J)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;
    .registers 3
    .param p1, "value"    # J

    .line 194
    iput-wide p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->endTime:J

    .line 195
    return-object p0
.end method

.method overheatType(I)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;
    .registers 2
    .param p1, "value"    # I

    .line 199
    iput p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->overheatType:I

    .line 200
    return-object p0
.end method

.method semOverheatReason(Lcom/sec/android/sdhmssdk/SemOverheatReason;)Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;
    .registers 2
    .param p1, "value"    # Lcom/sec/android/sdhmssdk/SemOverheatReason;

    .line 204
    iput-object p1, p0, Lcom/sec/android/sdhmssdk/SemOverheatHistory$Builder;->semOverheatReason:Lcom/sec/android/sdhmssdk/SemOverheatReason;

    .line 205
    return-object p0
.end method

.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
.super Ljava/lang/Object;
.source "SemQTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemIWCMonitor.QTable"

.field public static final serialVersionUID:J = 0x133f06dL


# instance fields
.field private final IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

.field public STEADSTATETHRESHOLD:I

.field private discountFactor:F

.field public eventBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public eventBufferLimit:I

.field public firstIndexToggling:I

.field public isSteadyState:Z

.field private lastAction:I

.field public lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field private lastState:I

.field public lastUpdateTime:J

.field private learningRate:F

.field public mLastSNS:I

.field public movedFirstIndexToggling:I

.field public numActions:I

.field public numStates:I

.field public qTable:[[F

.field private state:I

.field public steakTogglingCnt:I

.field public zeroIndexReached:I


# direct methods
.method static bridge synthetic -$$Nest$fgetdiscountFactor(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->discountFactor:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastAction(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastAction:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlastState(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlearningRate(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->learningRate:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstate(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->state:I

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    .line 24
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    .line 28
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    .line 37
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->state:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->state:I

    .line 38
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastState:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastState:I

    .line 39
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastAction:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastAction:I

    .line 40
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->learningRate:F

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->learningRate:F

    .line 41
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->discountFactor:F

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->discountFactor:F

    .line 42
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numStates:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    .line 43
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numActions:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numActions:I

    .line 44
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->mLastSNS:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    .line 45
    iget-boolean v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->isSteadyState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    .line 46
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastUpdateTime:J

    .line 47
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBuffer:Ljava/util/ArrayList;

    .line 48
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBufferLimit:I

    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    .line 49
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->STEADSTATETHRESHOLD:I

    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    .line 50
    iget-object v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 51
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->firstIndexToggling:I

    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    .line 52
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->movedFirstIndexToggling:I

    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    .line 53
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->steakTogglingCnt:I

    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    .line 54
    iget v1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->zeroIndexReached:I

    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    .line 55
    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->qTable:[[F

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    .line 56
    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    .line 57
    iput-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-void
.end method

.method public constructor <init>([FLcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V
    .registers 9

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 23
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    .line 24
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    .line 26
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    const/4 v1, 0x0

    .line 27
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    .line 28
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    .line 61
    aget v2, p1, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->state:I

    const/4 v2, 0x1

    .line 62
    aget v3, p1, v2

    iput v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->learningRate:F

    const/4 v3, 0x2

    .line 63
    aget p1, p1, v3

    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->discountFactor:F

    .line 65
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastAction:I

    const/4 p1, 0x3

    .line 66
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numActions:I

    .line 67
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    .line 68
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    const-wide/16 v4, 0x0

    .line 70
    iput-wide v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastUpdateTime:J

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    const/16 p1, 0x20

    .line 73
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    .line 75
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numActions:I

    new-array v3, v3, [I

    aput v0, v3, v2

    aput p1, v3, v1

    const-class p1, F

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    .line 77
    iput-object p2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    return-void
.end method

.method private checkConsSNSToggling(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V
    .registers 6

    .line 120
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_OFF:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-eq p1, v0, :cond_4b

    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-ne p1, v1, :cond_9

    goto :goto_4b

    .line 144
    :cond_9
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    if-lez p1, :cond_8b

    .line 145
    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    if-ge p1, v0, :cond_16

    .line 146
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_16

    goto :goto_18

    :cond_16
    add-int/lit8 p1, p1, -0x1

    .line 156
    :goto_18
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 158
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 159
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    iget v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    if-ne v2, v3, :cond_3e

    :cond_2d
    :goto_2d
    if-lez p1, :cond_41

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    add-int/lit8 p1, p1, -0x1

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2d

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 174
    :cond_41
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    const/4 p1, -0x1

    .line 175
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    .line 176
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    .line 177
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    goto :goto_8b

    .line 121
    :cond_4b
    :goto_4b
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    const/4 v1, 0x1

    if-nez p1, :cond_60

    .line 122
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    .line 123
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    .line 124
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    .line 127
    :cond_60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-eq p1, v0, :cond_68

    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->SNS_ON:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    if-ne p1, v0, :cond_8b

    .line 128
    :cond_68
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    if-nez p1, :cond_7a

    .line 129
    iget-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    if-le p1, v0, :cond_8b

    add-int/2addr v0, v1

    .line 130
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    goto :goto_8b

    :cond_7a
    if-eqz p1, :cond_8b

    .line 133
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    if-eq p1, v1, :cond_8b

    .line 134
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    if-nez p1, :cond_86

    .line 135
    iput v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    .line 137
    :cond_86
    iget p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    :cond_8b
    :goto_8b
    return-void
.end method

.method private checkSteadyState()Z
    .registers 22

    move-object/from16 v13, p0

    .line 201
    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->LESSEVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->getValue()I

    move-result v0

    .line 202
    sget-object v1, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MOREEVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->getValue()I

    move-result v1

    .line 203
    sget-object v2, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->OTHEREVENT_INDEXLIMIT:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->getValue()I

    move-result v2

    .line 205
    iget-object v3, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v14, 0x0

    if-lez v3, :cond_e0

    .line 206
    iget-object v3, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 207
    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 208
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 209
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 211
    sget-object v9, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->AUTO_DISCONNECTION:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->getValue()I

    move-result v9

    if-ne v8, v9, :cond_44

    add-int/lit8 v11, v11, 0x1

    goto :goto_53

    :cond_44
    if-ge v8, v0, :cond_4b

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    :cond_4b
    if-le v8, v1, :cond_53

    if-ge v8, v2, :cond_53

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    :cond_53
    :goto_53
    if-lez v7, :cond_59

    if-nez v6, :cond_59

    move v12, v7

    goto :goto_29

    :cond_59
    if-nez v7, :cond_5f

    if-lez v6, :cond_5f

    move v12, v6

    goto :goto_29

    :cond_5f
    if-lez v7, :cond_29

    if-lez v6, :cond_29

    if-le v7, v6, :cond_6b

    if-le v7, v12, :cond_68

    move v12, v7

    :cond_68
    :goto_68
    const/4 v7, 0x0

    :goto_69
    const/4 v11, 0x0

    goto :goto_29

    :cond_6b
    if-ge v7, v6, :cond_72

    if-le v6, v12, :cond_70

    move v12, v6

    :cond_70
    :goto_70
    const/4 v6, 0x0

    goto :goto_69

    :cond_72
    if-le v8, v1, :cond_77

    if-ge v8, v2, :cond_77

    goto :goto_70

    :cond_77
    if-ge v8, v0, :cond_29

    goto :goto_68

    :cond_7a
    if-ge v4, v5, :cond_7e

    move v10, v4

    goto :goto_7f

    :cond_7e
    move v10, v5

    :goto_7f
    if-le v4, v5, :cond_83

    move v9, v4

    goto :goto_84

    :cond_83
    move v9, v5

    .line 254
    :goto_84
    iget v3, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    iget-object v0, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    iget-boolean v7, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    iget v8, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    iget v6, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    iget v2, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    iget v1, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    const-string v16, "variable info"

    move-object/from16 v0, p0

    move/from16 v17, v1

    move v1, v12

    move/from16 v18, v2

    move v2, v11

    move/from16 v19, v6

    move v6, v14

    move v14, v9

    move/from16 v9, v19

    move v15, v10

    move/from16 v10, v18

    move/from16 v20, v11

    move/from16 v11, v17

    move/from16 v17, v14

    move v14, v12

    move-object/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->writeLog(IIIIIZZIIIILjava/lang/String;)V

    .line 259
    iget v0, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-ge v14, v1, :cond_de

    int-to-float v1, v14

    move/from16 v11, v20

    int-to-float v3, v11

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_cc

    goto :goto_de

    :cond_cc
    int-to-float v1, v15

    move/from16 v4, v17

    int-to-float v3, v4

    div-float/2addr v1, v3

    const/high16 v3, 0x3e800000    # 0.25f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_dc

    if-lez v15, :cond_dc

    if-lt v4, v0, :cond_dc

    goto :goto_de

    :cond_dc
    const/4 v14, 0x0

    goto :goto_fe

    :cond_de
    :goto_de
    move v14, v2

    goto :goto_fe

    .line 269
    :cond_e0
    iget v3, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    iget-object v0, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    iget-boolean v7, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    iget v8, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    iget v9, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    iget v10, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    iget v11, v13, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v12, "eventBuffer size <= 0"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->writeLog(IIIIIZZIIIILjava/lang/String;)V

    :goto_fe
    return v14
.end method

.method private writeLog(IIIIIZZIIIILjava/lang/String;)V
    .registers 15

    .line 332
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    int-to-float p1, p1

    .line 333
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    int-to-float p1, p2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    int-to-float p1, p3

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v0, p2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x4

    aput-object p1, v0, p2

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v0, p2

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 p2, 0x6

    aput-object p1, v0, p2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x8

    aput-object p1, v0, p2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x9

    aput-object p1, v0, p2

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0xa

    aput-object p1, v0, p2

    const/16 p1, 0xb

    aput-object p12, v0, p1

    const-string p1, "x: %f, y: %f, STEADSTATETHRESHOLD: %f, buffSize: %d, buffLimit: %d, tmpSteadyState: %b, isSteadyState: %b, first/moved_IndexToggling: %d/%d, steakTogglingCnt: %d, zeroIndexReached= %d, str = %s"

    .line 332
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemIWCMonitor.QTable"

    .line 335
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)I
    .registers 16

    .line 281
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_23

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 283
    iget v4, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    const/4 v5, -0x1

    iget v6, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    iget-boolean v8, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    iget v9, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    iget v10, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    iget v11, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    iget v12, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    const/4 v7, 0x0

    const-string v13, "eventBuffer is null --> new"

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->writeLog(IIIIIZZIIIILjava/lang/String;)V

    .line 288
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    const/4 v3, 0x1

    if-le v1, v2, :cond_5d

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 294
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 298
    :cond_4d
    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5d

    iget v1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    if-nez v1, :cond_5d

    sub-int/2addr v0, v3

    .line 299
    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    .line 304
    :cond_5d
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->checkConsSNSToggling(Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 307
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    if-nez v0, :cond_6d

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->checkSteadyState()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 312
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    goto :goto_6e

    :cond_6d
    const/4 v3, 0x0

    .line 317
    :goto_6e
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    return v3
.end method

.method public getBestState()I
    .registers 6

    .line 81
    iget v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, -0x3b860000    # -1000.0f

    move v2, v1

    move v1, v0

    :goto_8
    if-ltz v0, :cond_1a

    .line 84
    iget-object v3, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_17

    move v1, v0

    move v2, v3

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return v1
.end method

.method public getLastAction()I
    .registers 1

    .line 102
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastAction:I

    return p0
.end method

.method public getLastState()I
    .registers 1

    .line 106
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastState:I

    return p0
.end method

.method public getState()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->state:I

    return p0
.end method

.method public getSteadyState()Z
    .registers 1

    .line 114
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    return p0
.end method

.method public setLastState(I)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastState:I

    return-void
.end method

.method public setState(I)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->state:I

    return-void
.end method

.method public writeLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 322
    iget-object p0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->IWCLog:Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;

    if-nez p0, :cond_5

    return-void

    .line 325
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeReplace()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;
    .registers 2

    .line 339
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;-><init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V

    return-object v0
.end method

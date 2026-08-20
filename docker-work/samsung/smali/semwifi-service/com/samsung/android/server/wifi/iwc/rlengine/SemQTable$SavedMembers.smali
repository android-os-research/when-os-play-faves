.class Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;
.super Ljava/lang/Object;
.source "SemQTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedMembers"
.end annotation


# instance fields
.field public STEADSTATETHRESHOLD:I

.field public discountFactor:F

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

.field public lastAction:I

.field public lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

.field public lastState:I

.field public lastUpdateTime:J

.field public learningRate:F

.field public mLastSNS:I

.field public movedFirstIndexToggling:I

.field public numActions:I

.field public numStates:I

.field public qTable:[[F

.field public state:I

.field public steakTogglingCnt:I

.field public zeroIndexReached:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)V
    .registers 4

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->-$$Nest$fgetstate(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->state:I

    .line 365
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->-$$Nest$fgetlastState(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastState:I

    .line 366
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->-$$Nest$fgetlastAction(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastAction:I

    .line 367
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->-$$Nest$fgetlearningRate(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->learningRate:F

    .line 368
    invoke-static {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->-$$Nest$fgetdiscountFactor(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->discountFactor:F

    .line 369
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numStates:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numStates:I

    .line 370
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->numActions:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->numActions:I

    .line 371
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->mLastSNS:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->mLastSNS:I

    .line 372
    iget-boolean v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->isSteadyState:Z

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->isSteadyState:Z

    .line 373
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastUpdateTime:J

    .line 374
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBuffer:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBuffer:Ljava/util/ArrayList;

    .line 375
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->eventBufferLimit:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->eventBufferLimit:I

    .line 376
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->STEADSTATETHRESHOLD:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->STEADSTATETHRESHOLD:I

    .line 377
    iget-object v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->lastEvent:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    .line 378
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->firstIndexToggling:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->firstIndexToggling:I

    .line 379
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->movedFirstIndexToggling:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->movedFirstIndexToggling:I

    .line 380
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->steakTogglingCnt:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->steakTogglingCnt:I

    .line 381
    iget v0, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->zeroIndexReached:I

    iput v0, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->zeroIndexReached:I

    .line 382
    iget-object p1, p1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;->qTable:[[F

    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;->qTable:[[F

    return-void
.end method


# virtual methods
.method public readResolve(Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;
    .registers 3

    .line 389
    new-instance v0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable;-><init>(Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTable$SavedMembers;Lcom/samsung/android/server/wifi/iwc/SemIWCLogFile;)V

    return-object v0
.end method

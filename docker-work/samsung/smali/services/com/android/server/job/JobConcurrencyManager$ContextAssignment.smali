.class public final Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;
.super Ljava/lang/Object;
.source "JobConcurrencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobConcurrencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContextAssignment"
.end annotation


# instance fields
.field public context:Lcom/android/server/job/JobServiceContext;

.field public newJob:Lcom/android/server/job/controllers/JobStatus;

.field public newWorkType:I

.field public preemptReason:Ljava/lang/String;

.field public preemptReasonCode:I

.field public preferredUid:I

.field public shouldStopJobReason:Ljava/lang/String;

.field public workType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 2282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2284
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v0, 0x0

    .line 2285
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 2287
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 2290
    iput v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/JobConcurrencyManager$ContextAssignment-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 2293
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->context:Lcom/android/server/job/JobServiceContext;

    const/4 v1, -0x1

    .line 2294
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preferredUid:I

    const/4 v1, 0x0

    .line 2295
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->workType:I

    .line 2296
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReason:Ljava/lang/String;

    .line 2297
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->preemptReasonCode:I

    .line 2298
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->shouldStopJobReason:Ljava/lang/String;

    .line 2299
    iput-object v0, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newJob:Lcom/android/server/job/controllers/JobStatus;

    .line 2300
    iput v1, p0, Lcom/android/server/job/JobConcurrencyManager$ContextAssignment;->newWorkType:I

    return-void
.end method

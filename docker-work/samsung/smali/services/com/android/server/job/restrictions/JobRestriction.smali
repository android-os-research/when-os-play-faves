.class public abstract Lcom/android/server/job/restrictions/JobRestriction;
.super Ljava/lang/Object;
.source "JobRestriction.java"


# instance fields
.field public final mInternalReason:I

.field public final mReason:I

.field public final mService:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;II)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/job/restrictions/JobRestriction;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 44
    iput p2, p0, Lcom/android/server/job/restrictions/JobRestriction;->mReason:I

    .line 45
    iput p3, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return-void
.end method


# virtual methods
.method public abstract dumpConstants(Landroid/util/IndentingPrintWriter;)V
.end method

.method public dumpConstants(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    return-void
.end method

.method public final getInternalReason()I
    .registers 1

    .line 80
    iget p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mInternalReason:I

    return p0
.end method

.method public final getReason()I
    .registers 1

    .line 76
    iget p0, p0, Lcom/android/server/job/restrictions/JobRestriction;->mReason:I

    return p0
.end method

.method public abstract isJobRestricted(Lcom/android/server/job/controllers/JobStatus;)Z
.end method

.method public onSystemServicesReady()V
    .registers 1

    return-void
.end method

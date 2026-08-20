.class Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
.super Ljava/lang/Object;
.source "UceRequestCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestResult"
.end annotation


# instance fields
.field private final blacklist mErrorCode:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsSuccess:Ljava/lang/Boolean;

.field private final blacklist mRetryMillis:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTaskId:Ljava/lang/Long;


# direct methods
.method private constructor blacklist <init>(J)V
    .registers 4
    .param p1, "taskId"    # J

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mTaskId:Ljava/lang/Long;

    .line 157
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mIsSuccess:Ljava/lang/Boolean;

    .line 158
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mErrorCode:Ljava/util/Optional;

    .line 159
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mRetryMillis:Ljava/util/Optional;

    .line 160
    return-void
.end method

.method private constructor blacklist <init>(JIJ)V
    .registers 7
    .param p1, "taskId"    # J
    .param p3, "errorCode"    # I
    .param p4, "retryMillis"    # J

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mTaskId:Ljava/lang/Long;

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mIsSuccess:Ljava/lang/Boolean;

    .line 168
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mErrorCode:Ljava/util/Optional;

    .line 169
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mRetryMillis:Ljava/util/Optional;

    .line 170
    return-void
.end method

.method public static blacklist createFailedResult(JIJ)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 12
    .param p0, "taskId"    # J
    .param p2, "errorCode"    # I
    .param p3, "retry"    # J

    .line 144
    new-instance v6, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    move-object v0, v6

    move-wide v1, p0

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(JIJ)V

    return-object v6
.end method

.method public static blacklist createSuccessResult(J)Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;
    .registers 3
    .param p0, "taskId"    # J

    .line 134
    new-instance v0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;

    invoke-direct {v0, p0, p1}, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public blacklist getErrorCode()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mErrorCode:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getRetryMillis()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mRetryMillis:Ljava/util/Optional;

    return-object v0
.end method

.method public blacklist getTaskId()J
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mTaskId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isRequestSuccess()Z
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestCoordinator$RequestResult;->mIsSuccess:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

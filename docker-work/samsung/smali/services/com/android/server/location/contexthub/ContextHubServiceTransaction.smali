.class public abstract Lcom/android/server/location/contexthub/ContextHubServiceTransaction;
.super Ljava/lang/Object;
.source "ContextHubServiceTransaction.java"


# instance fields
.field public mIsComplete:Z

.field public final mNanoAppId:Ljava/lang/Long;

.field public final mPackage:Ljava/lang/String;

.field public final mTransactionId:I

.field public final mTransactionType:I


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .registers 7

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 57
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 58
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    .line 59
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    .line 60
    iput-object p5, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .registers 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    .line 49
    iput p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    .line 50
    iput p2, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    .line 52
    iput-object p3, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .registers 4

    .line 119
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    if-eqz p0, :cond_d

    const-wide/16 v0, 0x5

    .line 128
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0

    :cond_d
    const-wide/16 v0, 0x1e

    .line 121
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getTransactionId()I
    .registers 1

    .line 101
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionId:I

    return p0
.end method

.method public getTransactionType()I
    .registers 1

    .line 110
    iget p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    return p0
.end method

.method public isComplete()Z
    .registers 1

    .line 145
    iget-boolean p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    return p0
.end method

.method public onQueryResponse(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public abstract onTransact()I
.end method

.method public onTransactionComplete(I)V
    .registers 2

    return-void
.end method

.method public setComplete()V
    .registers 2

    const/4 v0, 0x1

    .line 138
    iput-boolean v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mIsComplete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mTransactionType:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/hardware/location/ContextHubTransaction;->typeToString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    if-eqz v1, :cond_3f

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "appId = 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mNanoAppId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/contexthub/ContextHubServiceTransaction;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

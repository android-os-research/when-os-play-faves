.class public final Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;
.super Ljava/lang/Object;
.source "ThreadingDomain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/location/ThreadingDomain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SingleRunnableQueue"
.end annotation


# instance fields
.field public mDelayMillis:J

.field public mIsQueued:Z

.field public final synthetic this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;


# direct methods
.method public static synthetic $r8$lambda$7LRyZe5aRdU7jEhHXAqD1DYgs7I(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->lambda$runDelayed$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$runDelayed$0(Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    const-wide/16 v0, -0x2

    .line 149
    iput-wide v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 150
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 182
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 183
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    if-eqz v0, :cond_e

    .line 184
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0, p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->removeQueuedRunnables(Ljava/lang/Object;)V

    :cond_e
    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    const-wide/16 v0, -0x1

    .line 187
    iput-wide v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    return-void
.end method

.method public getQueuedDelayMillis()J
    .registers 3

    .line 170
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 171
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    if-eqz v0, :cond_c

    .line 174
    iget-wide v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    return-wide v0

    .line 172
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No item queued"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasQueued()Z
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 160
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    return p0
.end method

.method public runDelayed(Ljava/lang/Runnable;J)V
    .registers 6

    .line 144
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mIsQueued:Z

    .line 146
    iput-wide p2, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->mDelayMillis:J

    .line 147
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->this$0:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    new-instance v1, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p0, p2, p3}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)V

    return-void
.end method

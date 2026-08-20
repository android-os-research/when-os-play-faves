.class public Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;
.super Ljava/lang/Object;
.source "CurrentDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/CurrentDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

.field public executor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$EF_QSYsXkHPMoQa1hcbheWGjWPE(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->lambda$run$0(Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;)V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;Ljava/util/concurrent/Executor;)V
    .registers 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    .line 48
    iput-object p2, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/util/Set;)V
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    invoke-interface {p0, p1}, Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;->onCurrentDeviceChanged(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 65
    :cond_4
    instance-of v1, p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 67
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    check-cast p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;

    iget-object p1, p1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    if-ne p0, p1, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method public hashCode()I
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->callback:Lcom/android/server/audio/CurrentDeviceManager$OnCurrentDeviceChangedCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public run(Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;->executor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_5

    return-void

    .line 53
    :cond_5
    new-instance v1, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/CurrentDeviceManager$CallbackRecord;Ljava/util/Set;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

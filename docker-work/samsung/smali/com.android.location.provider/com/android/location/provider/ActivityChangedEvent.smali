.class public Lcom/android/location/provider/ActivityChangedEvent;
.super Ljava/lang/Object;
.source "ActivityChangedEvent.java"


# instance fields
.field private final mActivityRecognitionEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "activityRecognitionEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    if-eqz p1, :cond_8

    .line 37
    iput-object p1, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    .line 38
    return-void

    .line 33
    :cond_8
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Parameter \'activityRecognitionEvents\' must not be null."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActivityRecognitionEvents()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/location/provider/ActivityRecognitionEvent;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ ActivityChangedEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/location/provider/ActivityChangedEvent;->mActivityRecognitionEvents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/location/provider/ActivityRecognitionEvent;

    .line 50
    .local v2, "event":Lcom/android/location/provider/ActivityRecognitionEvent;
    const-string v3, "\n    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Lcom/android/location/provider/ActivityRecognitionEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .end local v2    # "event":Lcom/android/location/provider/ActivityRecognitionEvent;
    goto :goto_d

    .line 53
    :cond_26
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

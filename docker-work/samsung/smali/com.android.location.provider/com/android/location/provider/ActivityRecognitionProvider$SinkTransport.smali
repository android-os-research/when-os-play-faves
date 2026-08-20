.class final Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;
.super Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;
.source "ActivityRecognitionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/location/provider/ActivityRecognitionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SinkTransport"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/location/provider/ActivityRecognitionProvider;


# direct methods
.method private constructor <init>(Lcom/android/location/provider/ActivityRecognitionProvider;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-direct {p0}, Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/location/provider/ActivityRecognitionProvider;Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;-><init>(Lcom/android/location/provider/ActivityRecognitionProvider;)V

    return-void
.end method


# virtual methods
.method public onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/location/ActivityChangedEvent;

    .line 109
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-static {v0}, Lcom/android/location/provider/ActivityRecognitionProvider;->-$$Nest$fgetmSinkSet(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 110
    :try_start_7
    iget-object v1, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-static {v1}, Lcom/android/location/provider/ActivityRecognitionProvider;->-$$Nest$fgetmSinkSet(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 111
    monitor-exit v0

    return-void

    .line 113
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/location/provider/ActivityRecognitionProvider$SinkTransport;->this$0:Lcom/android/location/provider/ActivityRecognitionProvider;

    invoke-static {v2}, Lcom/android/location/provider/ActivityRecognitionProvider;->-$$Nest$fgetmSinkSet(Lcom/android/location/provider/ActivityRecognitionProvider;)Ljava/util/HashSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v1, "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_69

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    invoke-virtual {p1}, Landroid/hardware/location/ActivityChangedEvent;->getActivityRecognitionEvents()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/ActivityRecognitionEvent;

    .line 120
    .local v3, "reportingEvent":Landroid/hardware/location/ActivityRecognitionEvent;
    new-instance v4, Lcom/android/location/provider/ActivityRecognitionEvent;

    .line 121
    invoke-virtual {v3}, Landroid/hardware/location/ActivityRecognitionEvent;->getActivity()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v3}, Landroid/hardware/location/ActivityRecognitionEvent;->getEventType()I

    move-result v6

    .line 123
    invoke-virtual {v3}, Landroid/hardware/location/ActivityRecognitionEvent;->getTimestampNs()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/location/provider/ActivityRecognitionEvent;-><init>(Ljava/lang/String;IJ)V

    .line 124
    .local v4, "gmsEvent":Lcom/android/location/provider/ActivityRecognitionEvent;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v3    # "reportingEvent":Landroid/hardware/location/ActivityRecognitionEvent;
    .end local v4    # "gmsEvent":Lcom/android/location/provider/ActivityRecognitionEvent;
    goto :goto_2e

    .line 126
    :cond_4f
    new-instance v2, Lcom/android/location/provider/ActivityChangedEvent;

    invoke-direct {v2, v0}, Lcom/android/location/provider/ActivityChangedEvent;-><init>(Ljava/util/List;)V

    .line 128
    .local v2, "gmsEvent":Lcom/android/location/provider/ActivityChangedEvent;
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_58
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/location/provider/ActivityRecognitionProvider$Sink;

    .line 129
    .local v4, "sink":Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    invoke-interface {v4, v2}, Lcom/android/location/provider/ActivityRecognitionProvider$Sink;->onActivityChanged(Lcom/android/location/provider/ActivityChangedEvent;)V

    .line 130
    .end local v4    # "sink":Lcom/android/location/provider/ActivityRecognitionProvider$Sink;
    goto :goto_58

    .line 131
    :cond_68
    return-void

    .line 114
    .end local v0    # "gmsEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/location/provider/ActivityRecognitionEvent;>;"
    .end local v1    # "sinks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/location/provider/ActivityRecognitionProvider$Sink;>;"
    .end local v2    # "gmsEvent":Lcom/android/location/provider/ActivityChangedEvent;
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

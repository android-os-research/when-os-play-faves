.class final Landroid/os/StrictMode$InstanceTracker;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceTracker"
.end annotation


# static fields
.field private static final greylist-max-o sInstanceCounts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mKlass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/Object;)V
    .registers 7
    .param p1, "instance"    # Ljava/lang/Object;

    .line 3124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3125
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    .line 3127
    sget-object v1, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v1

    .line 3128
    :try_start_c
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 3129
    .local v2, "value":Ljava/lang/Integer;
    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    .line 3130
    .local v3, "newValue":I
    :cond_1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    nop

    .end local v2    # "value":Ljava/lang/Integer;
    .end local v3    # "newValue":I
    monitor-exit v1

    .line 3132
    return-void

    .line 3131
    :goto_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_c .. :try_end_25} :catchall_26

    throw v0

    :catchall_26
    move-exception v0

    goto :goto_24
.end method

.method public static greylist-max-o getInstanceCount(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 3154
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v0

    .line 3155
    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3156
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    monitor-exit v0

    return v2

    .line 3157
    .end local v1    # "value":Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3137
    :try_start_0
    sget-object v0, Landroid/os/StrictMode$InstanceTracker;->sInstanceCounts:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_2d

    .line 3138
    :try_start_3
    iget-object v1, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3139
    .local v1, "value":Ljava/lang/Integer;
    if-eqz v1, :cond_24

    .line 3140
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3141
    .local v2, "newValue":I
    if-lez v2, :cond_1f

    .line 3142
    iget-object v3, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 3144
    :cond_1f
    iget-object v3, p0, Landroid/os/StrictMode$InstanceTracker;->mKlass:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    .end local v1    # "value":Ljava/lang/Integer;
    .end local v2    # "newValue":I
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_2a

    .line 3149
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3150
    nop

    .line 3151
    return-void

    .line 3147
    :catchall_2a
    move-exception v1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    .end local p0    # "this":Landroid/os/StrictMode$InstanceTracker;
    :try_start_2c
    throw v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2d

    .line 3149
    .restart local p0    # "this":Landroid/os/StrictMode$InstanceTracker;
    :catchall_2d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 3150
    throw v0
.end method

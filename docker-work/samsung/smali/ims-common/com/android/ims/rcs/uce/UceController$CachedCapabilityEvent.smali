.class Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
.super Ljava/lang/Object;
.source "UceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/UceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedCapabilityEvent"
.end annotation


# instance fields
.field private blacklist mPublishUpdatedEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRequestPublishCapabilitiesEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnpublishEvent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;

    .line 220
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;

    .line 221
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;

    .line 222
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;

    .line 223
    return-void
.end method

.method static synthetic blacklist lambda$clear$0(Lcom/android/ims/SomeArgs;)V
    .registers 1
    .param p0, "args"    # Lcom/android/ims/SomeArgs;

    .line 288
    invoke-virtual {p0}, Lcom/android/ims/SomeArgs;->recycle()V

    return-void
.end method

.method static synthetic blacklist lambda$clear$1(Lcom/android/ims/SomeArgs;)V
    .registers 1
    .param p0, "args"    # Lcom/android/ims/SomeArgs;

    .line 290
    invoke-virtual {p0}, Lcom/android/ims/SomeArgs;->recycle()V

    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist clear()V
    .registers 3

    monitor-enter p0

    .line 286
    :try_start_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;

    .line 287
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;

    .line 288
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;

    new-instance v1, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 289
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;

    .line 290
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;

    new-instance v1, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 291
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    .line 292
    monitor-exit p0

    return-void

    .line 285
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getPublishUpdatedEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 276
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 276
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getRemoteCapabilityRequestEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/ims/SomeArgs;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 281
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getRequestPublishEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 266
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist getUnpublishEvent()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 271
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 271
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setOnPublishUpdatedEvent(ILjava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "reasonCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "reasonHeaderCause"    # I
    .param p4, "reasonHeaderText"    # Ljava/lang/String;

    monitor-enter p0

    .line 244
    :try_start_1
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 245
    .local v0, "args":Lcom/android/ims/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 246
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 247
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 248
    iput-object p4, v0, Lcom/android/ims/SomeArgs;->arg4:Ljava/lang/Object;

    .line 249
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mPublishUpdatedEvent:Ljava/util/Optional;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 250
    monitor-exit p0

    return-void

    .line 243
    .end local v0    # "args":Lcom/android/ims/SomeArgs;
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .end local p1    # "reasonCode":I
    .end local p2    # "reasonPhrase":Ljava/lang/String;
    .end local p3    # "reasonHeaderCause":I
    .end local p4    # "reasonHeaderText":Ljava/lang/String;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setOnUnpublishEvent()V
    .registers 2

    monitor-enter p0

    .line 236
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mUnpublishEvent:Ljava/util/Optional;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 237
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setRemoteCapabilityRequestEvent(Landroid/net/Uri;Ljava/util/List;Landroid/telephony/ims/aidl/IOptionsRequestCallback;)V
    .registers 6
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/aidl/IOptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .local p2, "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 257
    :try_start_1
    invoke-static {}, Lcom/android/ims/SomeArgs;->obtain()Lcom/android/ims/SomeArgs;

    move-result-object v0

    .line 258
    .local v0, "args":Lcom/android/ims/SomeArgs;
    iput-object p1, v0, Lcom/android/ims/SomeArgs;->arg1:Ljava/lang/Object;

    .line 259
    iput-object p2, v0, Lcom/android/ims/SomeArgs;->arg2:Ljava/lang/Object;

    .line 260
    iput-object p3, v0, Lcom/android/ims/SomeArgs;->arg3:Ljava/lang/Object;

    .line 261
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRemoteCapabilityRequestEvent:Ljava/util/Optional;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 262
    monitor-exit p0

    return-void

    .line 256
    .end local v0    # "args":Lcom/android/ims/SomeArgs;
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .end local p1    # "contactUri":Landroid/net/Uri;
    .end local p2    # "remoteCapabilities":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p3    # "callback":Landroid/telephony/ims/aidl/IOptionsRequestCallback;
    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist setRequestPublishCapabilitiesEvent(I)V
    .registers 3
    .param p1, "triggerType"    # I

    monitor-enter p0

    .line 229
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;->mRequestPublishCapabilitiesEvent:Ljava/util/Optional;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 230
    monitor-exit p0

    return-void

    .line 228
    .end local p0    # "this":Lcom/android/ims/rcs/uce/UceController$CachedCapabilityEvent;
    .end local p1    # "triggerType":I
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

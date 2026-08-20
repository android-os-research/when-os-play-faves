.class public final Lcom/samsung/android/sume/core/message/Request;
.super Lcom/samsung/android/sume/core/message/Message;
.source "Request.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist inputBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist isOneWay:Z

.field private blacklist outputBufferList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist receiver:Landroid/os/Messenger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 47
    const/16 v0, 0x3df

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(II)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/message/Message;-><init>(Landroid/os/Message;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    .line 29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 31
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "input-buffer-list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 32
    .local v1, "inputBuffers":[Landroid/os/Parcelable;
    if-eqz v1, :cond_2b

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda0;-><init>()V

    .line 34
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 35
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    .line 38
    :cond_2b
    const-string v2, "output-buffer-list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 39
    .local v2, "outputBuffers":[Landroid/os/Parcelable;
    if-eqz v2, :cond_4c

    .line 40
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda1;-><init>()V

    .line 41
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 42
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    .line 44
    :cond_4c
    return-void
.end method

.method static synthetic blacklist lambda$getContentValues$4(Ljava/util/List;)Ljava/util/Optional;
    .registers 2
    .param p0, "e"    # Ljava/util/List;

    .line 156
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getInputBuffer$2(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p0, "it"    # Ljava/util/List;

    .line 134
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_27

    .line 137
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string/jumbo v3, "singular-buffer"

    invoke-interface {v2, v3, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0

    .line 140
    :cond_27
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$getOutputBuffer$3(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3
    .param p0, "it"    # Ljava/util/List;

    .line 149
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_1b

    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    goto :goto_1b

    :cond_17
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    :goto_1b
    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "it"    # Landroid/os/Parcelable;

    .line 34
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/os/Parcelable;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2
    .param p0, "it"    # Landroid/os/Parcelable;

    .line 41
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    return-object v0
.end method

.method public static blacklist of(I)Lcom/samsung/android/sume/core/message/Request;
    .registers 2
    .param p0, "code"    # I

    .line 172
    new-instance v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Request;-><init>(I)V

    return-object v0
.end method

.method public static blacklist of(ILjava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Request;
    .registers 4
    .param p0, "code"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 176
    new-instance v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Request;-><init>(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sume/core/message/Request;->put(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/core/message/Message;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/message/Request;

    return-object v0
.end method

.method public static blacklist of(Landroid/os/Message;)Lcom/samsung/android/sume/core/message/Request;
    .registers 2
    .param p0, "msg"    # Landroid/os/Message;

    .line 180
    new-instance v0, Lcom/samsung/android/sume/core/message/Request;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/message/Request;-><init>(Landroid/os/Message;)V

    return-object v0
.end method


# virtual methods
.method public blacklist asOneWay()Lcom/samsung/android/sume/core/message/Request;
    .registers 2

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    .line 93
    return-object p0
.end method

.method public blacklist getContentValues()Landroid/content/ContentValues;
    .registers 3

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->getContentValuesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda4;-><init>()V

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 155
    return-object v0
.end method

.method public blacklist getContentValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 168
    const-string v0, "content-values"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/message/Request;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public blacklist getInputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda2;-><init>()V

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 132
    return-object v0
.end method

.method public blacklist getOutputBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/message/Request$$ExternalSyntheticLambda3;-><init>()V

    .line 149
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 148
    return-object v0
.end method

.method public blacklist getReceiver()Landroid/os/Messenger;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    return-object v0
.end method

.method public blacklist isOneWay()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/samsung/android/sume/core/message/Request;->isOneWay:Z

    return v0
.end method

.method public blacklist post()Lcom/samsung/android/sume/core/message/Message;
    .registers 6

    .line 102
    iget-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    if-nez v0, :cond_27

    .line 103
    sget-object v0, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no receiver object given for code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skip to send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object p0

    .line 108
    :cond_27
    const/4 v0, 0x0

    :try_start_28
    sget-object v1, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->toAndroidMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4a} :catch_62
    .catchall {:try_start_28 .. :try_end_4a} :catchall_60

    .line 114
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v1, :cond_56

    .line 115
    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    :cond_56
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v1, :cond_98

    .line 117
    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    goto :goto_95

    .line 114
    :catchall_60
    move-exception v1

    goto :goto_9e

    .line 110
    :catch_62
    move-exception v1

    .line 111
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_63
    sget-object v2, Lcom/samsung/android/sume/core/message/Request;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to send request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_63 .. :try_end_7f} :catchall_60

    .line 114
    nop

    .end local v1    # "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v1, :cond_8c

    .line 115
    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    :cond_8c
    iget-object v1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v1, :cond_98

    .line 117
    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    :goto_95
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    :cond_98
    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    .line 119
    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    .line 120
    nop

    .line 121
    return-object p0

    .line 114
    :goto_9e
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    if-eqz v2, :cond_aa

    .line 115
    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 116
    :cond_aa
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v2, :cond_b6

    .line 117
    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 118
    :cond_b6
    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    .line 119
    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    .line 120
    throw v1
.end method

.method public blacklist setInputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Request;"
        }
    .end annotation

    .line 68
    .local p1, "mediaBufferList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    .line 69
    return-object p0
.end method

.method public varargs blacklist setInputBuffer([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/message/Request;
    .registers 3
    .param p1, "mediaBuffers"    # [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 63
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    .line 64
    return-object p0
.end method

.method public blacklist setOutputBuffer(Ljava/util/List;)Lcom/samsung/android/sume/core/message/Request;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Request;"
        }
    .end annotation

    .line 78
    .local p1, "mediaBufferList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    .line 79
    return-object p0
.end method

.method public varargs blacklist setOutputBuffer([Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/message/Request;
    .registers 3
    .param p1, "mediaBuffers"    # [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 73
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    .line 74
    return-object p0
.end method

.method public blacklist setReceiver(Landroid/os/Messenger;)Lcom/samsung/android/sume/core/message/Request;
    .registers 2
    .param p1, "receiver"    # Landroid/os/Messenger;

    .line 87
    iput-object p1, p0, Lcom/samsung/android/sume/core/message/Request;->receiver:Landroid/os/Messenger;

    .line 88
    return-object p0
.end method

.method public blacklist then(Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/message/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/samsung/android/sume/core/message/Message;",
            ">;)",
            "Lcom/samsung/android/sume/core/message/Message;"
        }
    .end annotation

    .line 126
    .local p1, "responseListener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/samsung/android/sume/core/message/Message;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->getInstance()Lcom/samsung/android/sume/core/message/Response$ListenerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/core/message/Response$ListenerManager;->register(Ljava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/message/Request;->extra:I

    .line 127
    return-object p0
.end method

.method public blacklist toAndroidMessage()Landroid/os/Message;
    .registers 6

    .line 53
    invoke-super {p0}, Lcom/samsung/android/sume/core/message/Message;->toAndroidMessage()Landroid/os/Message;

    move-result-object v0

    .line 54
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 55
    .local v1, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->inputBufferList:Ljava/util/List;

    const/4 v3, 0x0

    if-eqz v2, :cond_1a

    .line 56
    new-array v4, v3, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const-string v4, "input-buffer-list"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 57
    :cond_1a
    iget-object v2, p0, Lcom/samsung/android/sume/core/message/Request;->outputBufferList:Ljava/util/List;

    if-eqz v2, :cond_2b

    .line 58
    new-array v3, v3, [Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    const-string v3, "output-buffer-list"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 59
    :cond_2b
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/message/Request;->contentToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

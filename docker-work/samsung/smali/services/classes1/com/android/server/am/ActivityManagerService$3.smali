.class public Lcom/android/server/am/ActivityManagerService$3;
.super Lcom/android/server/IntentResolver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Lcom/android/server/am/BroadcastFilter;",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 1347
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    return-void
.end method


# virtual methods
.method public allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastFilter;",
            "Ljava/util/List<",
            "Lcom/android/server/am/BroadcastFilter;",
            ">;)Z"
        }
    .end annotation

    .line 1351
    iget-object p0, p1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object p0, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {p0}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    .line 1352
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_e
    if-ltz p1, :cond_25

    .line 1353
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    iget-object v1, v1, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    iget-object v1, v1, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p0, :cond_22

    const/4 p0, 0x0

    return p0

    :cond_22
    add-int/lit8 p1, p1, -0x1

    goto :goto_e

    :cond_25
    return v0
.end method

.method public bridge synthetic allowFilterResult(Ljava/lang/Object;Ljava/util/List;)Z
    .registers 3

    .line 1347
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$3;->allowFilterResult(Lcom/android/server/am/BroadcastFilter;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;
    .registers 2

    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .registers 2

    .line 1347
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$3;->getIntentFilter(Lcom/android/server/am/BroadcastFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z
    .registers 3

    .line 1382
    iget-object p0, p2, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    .line 1347
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$3;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/am/BroadcastFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Lcom/android/server/am/BroadcastFilter;
    .registers 2

    .line 1377
    new-array p0, p1, [Lcom/android/server/am/BroadcastFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1347
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$3;->newArray(I)[Lcom/android/server/am/BroadcastFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;
    .registers 9

    const/4 v0, -0x1

    if-eq p4, v0, :cond_c

    .line 1363
    iget v1, p2, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-eq v1, v0, :cond_c

    if-ne p4, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return-object p0

    .line 1365
    :cond_c
    :goto_c
    invoke-super/range {p0 .. p6}, Lcom/android/server/IntentResolver;->newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    return-object p0
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .registers 7

    .line 1347
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/am/ActivityManagerService$3;->newResult(Lcom/android/server/pm/Computer;Lcom/android/server/am/BroadcastFilter;IIJ)Lcom/android/server/am/BroadcastFilter;

    move-result-object p0

    return-object p0
.end method

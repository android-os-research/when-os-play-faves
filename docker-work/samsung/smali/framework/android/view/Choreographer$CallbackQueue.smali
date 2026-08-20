.class final Landroid/view/Choreographer$CallbackQueue;
.super Ljava/lang/Object;
.source "Choreographer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Choreographer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallbackQueue"
.end annotation


# instance fields
.field private greylist-max-o mHead:Landroid/view/Choreographer$CallbackRecord;

.field final synthetic blacklist this$0:Landroid/view/Choreographer;


# direct methods
.method private constructor blacklist <init>(Landroid/view/Choreographer;)V
    .registers 2

    .line 1314
    iput-object p1, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackQueue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/Choreographer$CallbackQueue;-><init>(Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public greylist addCallbackLocked(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 12
    .param p1, "dueTime"    # J
    .param p3, "action"    # Ljava/lang/Object;
    .param p4, "token"    # Ljava/lang/Object;
    .param p5, "log"    # Ljava/lang/String;

    .line 1343
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/view/Choreographer;->-$$Nest$mobtainCallbackLocked(Landroid/view/Choreographer;JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Landroid/view/Choreographer$CallbackRecord;

    move-result-object v0

    .line 1344
    .local v0, "callback":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1345
    .local v1, "entry":Landroid/view/Choreographer$CallbackRecord;
    if-nez v1, :cond_11

    .line 1346
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1347
    return-void

    .line 1349
    :cond_11
    iget-wide v2, v1, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1c

    .line 1350
    iput-object v1, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1351
    iput-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1352
    return-void

    .line 1354
    :cond_1c
    :goto_1c
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v2, :cond_30

    .line 1355
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iget-wide v2, v2, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_2d

    .line 1356
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1357
    goto :goto_30

    .line 1359
    :cond_2d
    iget-object v1, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_1c

    .line 1361
    :cond_30
    :goto_30
    iput-object v0, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1362
    return-void
.end method

.method public greylist-max-o extractDueCallbacksLocked(J)Landroid/view/Choreographer$CallbackRecord;
    .registers 9
    .param p1, "now"    # J

    .line 1322
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1323
    .local v0, "callbacks":Landroid/view/Choreographer$CallbackRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    iget-wide v2, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_c

    goto :goto_21

    .line 1327
    :cond_c
    move-object v2, v0

    .line 1328
    .local v2, "last":Landroid/view/Choreographer$CallbackRecord;
    iget-object v3, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1329
    .local v3, "next":Landroid/view/Choreographer$CallbackRecord;
    :goto_f
    if-eqz v3, :cond_1e

    .line 1330
    iget-wide v4, v3, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v4, v4, p1

    if-lez v4, :cond_1a

    .line 1331
    iput-object v1, v2, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1332
    goto :goto_1e

    .line 1334
    :cond_1a
    move-object v2, v3

    .line 1335
    iget-object v3, v3, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_f

    .line 1337
    :cond_1e
    :goto_1e
    iput-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1338
    return-object v0

    .line 1324
    .end local v2    # "last":Landroid/view/Choreographer$CallbackRecord;
    .end local v3    # "next":Landroid/view/Choreographer$CallbackRecord;
    :cond_21
    :goto_21
    return-object v1
.end method

.method public greylist-max-o hasDueCallbacksLocked(J)Z
    .registers 5
    .param p1, "now"    # J

    .line 1318
    iget-object v0, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    if-eqz v0, :cond_c

    iget-wide v0, v0, Landroid/view/Choreographer$CallbackRecord;->dueTime:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o removeCallbacksLocked(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "token"    # Ljava/lang/Object;

    .line 1365
    const/4 v0, 0x0

    .line 1366
    .local v0, "predecessor":Landroid/view/Choreographer$CallbackRecord;
    iget-object v1, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .local v1, "callback":Landroid/view/Choreographer$CallbackRecord;
    :goto_3
    if-eqz v1, :cond_24

    .line 1367
    iget-object v2, v1, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    .line 1368
    .local v2, "next":Landroid/view/Choreographer$CallbackRecord;
    if-eqz p1, :cond_d

    iget-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->action:Ljava/lang/Object;

    if-ne v3, p1, :cond_14

    :cond_d
    if-eqz p2, :cond_16

    iget-object v3, v1, Landroid/view/Choreographer$CallbackRecord;->token:Ljava/lang/Object;

    if-ne v3, p2, :cond_14

    goto :goto_16

    .line 1377
    :cond_14
    move-object v0, v1

    goto :goto_22

    .line 1370
    :cond_16
    :goto_16
    if-eqz v0, :cond_1b

    .line 1371
    iput-object v2, v0, Landroid/view/Choreographer$CallbackRecord;->next:Landroid/view/Choreographer$CallbackRecord;

    goto :goto_1d

    .line 1373
    :cond_1b
    iput-object v2, p0, Landroid/view/Choreographer$CallbackQueue;->mHead:Landroid/view/Choreographer$CallbackRecord;

    .line 1375
    :goto_1d
    iget-object v3, p0, Landroid/view/Choreographer$CallbackQueue;->this$0:Landroid/view/Choreographer;

    invoke-static {v3, v1}, Landroid/view/Choreographer;->-$$Nest$mrecycleCallbackLocked(Landroid/view/Choreographer;Landroid/view/Choreographer$CallbackRecord;)V

    .line 1379
    :goto_22
    move-object v1, v2

    .line 1380
    .end local v2    # "next":Landroid/view/Choreographer$CallbackRecord;
    goto :goto_3

    .line 1381
    .end local v1    # "callback":Landroid/view/Choreographer$CallbackRecord;
    :cond_24
    return-void
.end method

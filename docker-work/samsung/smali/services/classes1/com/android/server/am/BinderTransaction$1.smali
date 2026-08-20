.class public Lcom/android/server/am/BinderTransaction$1;
.super Ljava/lang/Thread;
.source "BinderTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/BinderTransaction;->getInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BinderTransaction;

.field public final synthetic val$startPid:I

.field public final synthetic val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;I)V
    .registers 5

    .line 111
    iput-object p1, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iput-object p3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iput p4, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 113
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 114
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 117
    iget-object v2, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v2, v2, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v3, v4}, Lcom/android/server/am/BinderTransaction;->-$$Nest$mmakeBinderTransactionsLogHeader(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget v2, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 121
    :cond_22
    :goto_22
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_63

    .line 123
    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 126
    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v4, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-static {v3, v2, v0, v1, v4}, Lcom/android/server/am/BinderTransaction;->-$$Nest$mfindBinderTransactions(Lcom/android/server/am/BinderTransaction;ILjava/util/LinkedList;Ljava/util/LinkedList;Ljava/util/ArrayList;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 130
    iget-object v3, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v3, v3, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/am/BinderTransaction;->-$$Nest$sfgetLOG_ERROR_LINE_FAILED_TO_GET_THE_BINDER_TRANSACTION()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v4, v2}, Lcom/android/server/am/BinderTransaction;->-$$Nest$mmakeBinderTransactionsErrorLog(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 138
    :cond_63
    iget-object v0, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget-object v2, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/BinderTransaction;->-$$Nest$mseparatePidsByProcessType(Lcom/android/server/am/BinderTransaction;Ljava/util/LinkedList;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 141
    iget-object v0, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v0, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    invoke-static {}, Lcom/android/server/am/BinderTransaction;->-$$Nest$sfgetLOG_ERROR_LINE_FAILED_TO_GET_THE_PROCESS_TYPES()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/BinderTransaction;->-$$Nest$mmakeBinderTransactionsErrorLog(Lcom/android/server/am/BinderTransaction;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_7e
    iget-object v0, p0, Lcom/android/server/am/BinderTransaction$1;->val$workInfo:Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    iget-object v0, v0, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/BinderTransaction$1;->this$0:Lcom/android/server/am/BinderTransaction;

    iget p0, p0, Lcom/android/server/am/BinderTransaction$1;->val$startPid:I

    invoke-static {v1, p0}, Lcom/android/server/am/BinderTransaction;->-$$Nest$mmakeBinderTransactionsLogFooter(Lcom/android/server/am/BinderTransaction;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

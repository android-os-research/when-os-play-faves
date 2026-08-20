.class public final synthetic Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p4, Landroid/util/LongArrayQueue;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/utils/quota/CountQuotaTracker;->$r8$lambda$3FyrSjyhQPNhYGvjBXwoY3QiII4(Lcom/android/internal/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V

    return-void
.end method

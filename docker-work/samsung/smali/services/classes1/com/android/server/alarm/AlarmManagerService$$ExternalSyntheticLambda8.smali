.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/util/SparseArrayMap$TriConsumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(ILjava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/util/ArrayMap;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->$r8$lambda$Smiop36s7UtZC9TTiTxKnJCeQ_U(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V

    return-void
.end method

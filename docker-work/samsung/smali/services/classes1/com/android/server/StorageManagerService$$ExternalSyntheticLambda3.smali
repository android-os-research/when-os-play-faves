.class public final synthetic Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/StorageManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lcom/android/server/StorageManagerService;->$r8$lambda$g9RUPXxb7vc7vgEXAyX3YVhyBRk(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Integer;Ljava/lang/Boolean;)V

    return-void
.end method

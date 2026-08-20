.class public final synthetic Lcom/samsung/android/mcf/c$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/c;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/c$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/c;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/samsung/android/mcf/c$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/c;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/mcf/c;->$r8$lambda$BL6jmK--ECh0Jch9ltSjCdI9Z6E(Lcom/samsung/android/mcf/c;II)V

    return-void
.end method

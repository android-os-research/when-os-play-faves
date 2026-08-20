.class public final synthetic Lcom/samsung/android/mcf/b$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/mcf/b;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/mcf/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/b$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/mcf/b$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/mcf/b;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/mcf/b;->$r8$lambda$MaNaRmTg4hCHdN85ynXoZnNptaY(Lcom/samsung/android/mcf/b;II)V

    return-void
.end method

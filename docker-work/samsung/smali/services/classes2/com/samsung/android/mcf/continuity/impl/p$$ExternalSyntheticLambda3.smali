.class public final synthetic Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Ljava/io/OutputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/OutputStream;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda3;->f$0:Ljava/io/OutputStream;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/continuity/impl/p$$ExternalSyntheticLambda3;->f$0:Ljava/io/OutputStream;

    invoke-static {p0}, Lcom/samsung/android/mcf/continuity/impl/p;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

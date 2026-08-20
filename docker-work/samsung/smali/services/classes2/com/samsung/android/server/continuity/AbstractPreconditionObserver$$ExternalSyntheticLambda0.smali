.class public final synthetic Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->$r8$lambda$a-sMfquPGGvfPcHAb2bbejZX16A(Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;Z)V

    return-void
.end method

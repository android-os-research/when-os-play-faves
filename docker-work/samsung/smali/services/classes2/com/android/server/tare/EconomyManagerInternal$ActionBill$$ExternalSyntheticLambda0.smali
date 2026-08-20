.class public final synthetic Lcom/android/server/tare/EconomyManagerInternal$ActionBill$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;

    invoke-static {p1}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->$r8$lambda$rQLXKFtEQhNPJHvx39TTIhGe4o4(Lcom/android/server/tare/EconomyManagerInternal$AnticipatedAction;)I

    move-result p0

    return p0
.end method

.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda50;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$TTjPfbf6BZ5X8qcUQcbrQ06EixQ(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z

    move-result p0

    return p0
.end method

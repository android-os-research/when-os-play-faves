.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    check-cast p2, Lcom/android/server/wm/Task;

    invoke-static {p1, p2}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$sY1RdJnM082pz8U-kwFSnoOtpok(Lcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

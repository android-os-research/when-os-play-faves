.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$0:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-boolean p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda57;->f$0:Z

    check-cast p1, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$QpqoZ84SbmbKmrpi9vtoFmdJW48(ZLcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/DisplayContent;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;IIIII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    iput p2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$1:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$2:I

    iput p4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$3:I

    iput p5, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$4:I

    iput p6, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$5:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$0:Lcom/android/server/wm/DisplayContent;

    iget v1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$1:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$2:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$3:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$4:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda47;->f$5:I

    move-object v6, p1

    check-cast v6, Lcom/android/server/wm/TaskDisplayArea;

    invoke-static/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$5bUtBk0WycD0qgwhRtSMUsAkAa0(Lcom/android/server/wm/DisplayContent;IIIIILcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

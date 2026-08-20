.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/MultiTaskingController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iput p2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/wm/MultiTaskingController;

    iget v1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda13;->f$3:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/android/server/wm/MultiTaskingController;->$r8$lambda$okz1Y9n-rC4D8u7G1Alzd6JC_24(Lcom/android/server/wm/MultiTaskingController;ILjava/lang/String;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

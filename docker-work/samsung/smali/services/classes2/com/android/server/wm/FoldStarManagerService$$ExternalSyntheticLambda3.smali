.class public final synthetic Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/FixedAspectRatioController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/FixedAspectRatioController;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FixedAspectRatioController;

    iput p2, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/FixedAspectRatioController;

    iget p0, p0, Lcom/android/server/wm/FoldStarManagerService$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/server/wm/FoldStarManagerService;->$r8$lambda$bZrlBZgcTORxtDTVuOvIqFNEnuI(Lcom/android/server/wm/FixedAspectRatioController;ILjava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
